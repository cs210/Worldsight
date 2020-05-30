var axios = require('axios');
var fs = require('fs');
var path = require('path');
var rimraf = require("rimraf");

var uploadFile = require('./s3-handler.js');
var emailSender = require('./email-sender.js')
const download = require('images-downloader').images;
var photogrammetry = require('./commandline-server.js');

const EXTENSION = '.glb';
const BACKEND = 'http://mesh-works.io/';

// Assume that the database watcher had just been notified of
// this new item instance.
var cloroxItem  = {
  _id: '5ed10da7bf3ff04a39cb2901',
  email: 'worldsightvr@gmail.com',
  name: 'Clorox',
  photoUrls:
   [ 'https://meshworks.s3.amazonaws.com/9f1c9a5d-a9fe-4737-9ab3-700e7a152d15_97407064_660372021209747_8449038816919945216_n.jpg',
     'https://meshworks.s3.amazonaws.com/424b44d7-ba44-4d58-9564-9fbf9585f2f1_98164692_240939607178262_5818214169496780800_n.jpg',
     'https://meshworks.s3.amazonaws.com/2e08d2bc-1490-4ce0-8682-3f318b35d75a_97333016_557248961650348_8815498040933613568_n.jpg',
     'https://meshworks.s3.amazonaws.com/822c7067-b933-490f-b80b-c2dd9621cef2_98036732_542008479782556_4833738103963254784_n.jpg',
     'https://meshworks.s3.amazonaws.com/6cd6cc39-9560-47ad-9885-d1d2818f3289_97902479_278726879952377_8049927993096667136_n.jpg',
     'https://meshworks.s3.amazonaws.com/0a2ea4da-e329-47da-b7ba-654d5b8ac055_98285805_551592892457608_1911400501308555264_n.jpg',
     'https://meshworks.s3.amazonaws.com/97141dae-d0bb-4020-a959-5d821cac488e_98599519_3109674759148718_4358407867087192064_n.jpg',
     'https://meshworks.s3.amazonaws.com/32db28c0-2d7c-4508-b6f1-c3279b2736d5_99291052_1497911670378584_451549063087652864_n.jpg',
     'https://meshworks.s3.amazonaws.com/eb0c8bed-ecac-4f96-a4a2-3fc4fbd45f65_98365393_555592518449718_7431077811957268480_n.jpg',
     'https://meshworks.s3.amazonaws.com/af6984eb-8345-46af-8665-9d7226e00f4c_97993121_727700384437032_242760042720264192_n.jpg',
     'https://meshworks.s3.amazonaws.com/967a5645-c1ff-4a71-bfea-8c1e65f95668_99013469_321143228874301_9017702537133817856_n.jpg',
     'https://meshworks.s3.amazonaws.com/9a4ec73a-07bb-4c37-9b37-d1bec5532aab_99299186_2554025708191765_585378775152197632_n.jpg',
     'https://meshworks.s3.amazonaws.com/320961a0-182b-40ad-8f27-36301871972a_99263610_557197458315075_1444162408019918848_n.jpg',
     'https://meshworks.s3.amazonaws.com/ab93d907-9a97-4c5d-9e34-5e6e9e7c68eb_99293132_2957132214322044_7888102168073338880_n.jpg',
     'https://meshworks.s3.amazonaws.com/7b499a05-98fe-4780-8676-4c3f973d2f60_98355192_529712984576915_1233255960185667584_n.jpg' ],
  videoUrl: '',
  meshUrl: '',
  tags: [ 'clorox', 'box' ],
  updatedAt: '2020-05-29T13:27:03.616Z',
  createdAt: '2020-05-29T13:27:03.616Z',
  __v: 0
}

// // Called after file is put to s3
// function onFinishS3Put(signResult, file) {
//   console.log(signResult, file);
//
//   let newPhotoURL = S3_BUCKET_URL+signResult.fileKey;
// }

async function updateDB(id, meshUrl) {
  try {
    let res = await axios.post(BACKEND + 'api/items/updatemesh',
                                  {"id": id, "meshurl": meshUrl});
    if(res.data){
      console.log("POST successful.");
    }
  } catch (e) {
    throw e;
  }
}

async function findOutputMeshPath(outputDir) {
  if (!fs.existsSync(outputDir)) {
    throw new Error( 'Output directory doesn\'t exist.');
  }
  let targetFiles = fs.readdirSync(outputDir).filter(
    function(file) {
      return path.extname(file).toLowerCase() === EXTENSION;
  });
  if (targetFiles.length > 0) {

    return outputDir + '/' + targetFiles[0];

  } else {
    throw new Error('No mesh matching file extension ' + EXTENSION);
  }
}

async function handleNewItem(newItem) {
  let res, e;

  // Check item is valid (includes photoURLs, etc)
  if (newItem.photoUrls.length == 0 || newItem._id === "") throw 'Failed to process new item.';
  var inputDir = 'pg-inputs/' + newItem._id;
  res = await emailSender.sendConfirmationEmail(newItem.email, newItem.name);

  // download the images from newItem.photoURLs
  console.log("Step 1: Downloading from photoURLs. " + inputDir);
  // create directory in ./pg_inputs named newItem._id
  if (!fs.existsSync(inputDir)){ fs.mkdirSync(inputDir); }
  res = await download(newItem.photoUrls, inputDir);
  //if(e) throw e;
  console.log('All images downloaded.', res);

  // RUN PG. convert to mesh (output in pg_outputs)
  console.log("Step 2: Running PG.");
  var outputDir = 'pg-outputs/' + newItem._id;
  res = await photogrammetry(inputDir, outputDir);
  //if(e) throw e;

  // Check mesh from photogrammetry exists
  console.log("Step 3: Looking for mesh output.");
  let meshPath = await findOutputMeshPath(outputDir);

  // Upload to s3
  console.log("Step 4: Uploading mesh " + meshPath + " to s3.");
  meshS3URL = await uploadFile(meshPath, newItem._id);

  // Update the DB entry with link to mesh in s3.
  console.log("Step 5: updating mesh path in DB with: " + meshS3URL);
  res = await updateDB(newItem._id, meshS3URL);

  // send completion email with mesh-works.io/mesh/{newItem._id} as link
  console.log("Step 6: send completion email.");
  res = await emailSender.sendMeshCompleteEmail(newItem.email, newItem._id, newItem.name);

  // delete downloaded directory in pg_inputs
  console.log("Step 7: deleting input directory.");
  await rimraf(inputDir, function () { console.log("deleting done."); });
}

//module.exports = handleNewItem;


//handleNewItem(cloroxItem);
handleNewItem(cloroxItem).catch( e => {console.error(e)});
