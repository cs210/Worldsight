var axios = require('axios');
var fs = require('fs');
var path = require('path');
var rimraf = require("rimraf");
const {spawn} = require('promisify-child-process')
var uploadFile = require('./s3-handler.js');
var emailSender = require('./email-sender.js')
//const download = require('images-downloader').images;
var photogrammetry = require('./commandline-server.js');


const {onExit} = require('@rauschma/stringio');


const EXTENSION = '.glb';
const BACKEND = 'http://mesh-works.io/';

// Finds the itme in DB with id, updates its meshUrl field.
// Connects to the mesh-works.io backend
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

  var inputDir = 'pg-inputs/' + newItem._id;
  var outputDir = 'pg-outputs/' + newItem._id;
  var graphDir = 'pg-graphs/' + newItem._id;

  // Send email to signal processing.
  res = await emailSender.sendConfirmationEmail(newItem.email, newItem.name); // Send email.

  // RUN PG. convert to mesh (output in pg_outputs)
  console.log("Step 2: Running PG.");
  await photogrammetry(inputDir, outputDir, graphDir).catch((e) => console.log(e));

  // Check mesh from photogrammetry exists
  console.log("Step 3: Looking for mesh output.");
  let meshPath = await findOutputMeshPath(outputDir);

  // Upload to s3
  console.log("Step 4: Uploading mesh " + meshPath + " to s3.");
  meshS3URL = await uploadFile(meshPath, newItem._id + EXTENSION);

  // Update the DB entry with link to mesh in s3.
  console.log("Step 5: updating mesh path in DB with: " + meshS3URL);
  res = await updateDB(newItem._id, meshS3URL);

  // delete directories for this mesh
  console.log("Deleting directories.");
  await rimraf(inputDir, function () { console.log("deleting done."); });
  await rimraf(outputDir, function () { console.log("deleting done."); });
  await rimraf(graphDir, function () { console.log("deleting done."); });

  // send completion email with mesh-works.io/mesh/{newItem._id} as link
  console.log("Step 6: send completion email.");
  res = await emailSender.sendMeshCompleteEmail(newItem.email, newItem._id, newItem.name);
}

module.exports = handleNewItem;

//handleNewItem(cloroxItem).catch( e => {console.error(e)});
//
