var axios = require('axios');
var fs = require('fs');
var rimraf = require("rimraf");
var path = require('path');

function request (element) {
  try{
    return axios({
      url: element,
      method: "GET",
      responseType: "stream"
    });
  } catch(e) {
    console.log( 'errore: ' + e)
  }
}

async function download(urls, inputDir){
  for(const url of urls) {
     const saveFile = await request(url);
     const file = url.split('/')[3];
     const download = fs.createWriteStream(path.join(inputDir, file));
     await new Promise((resolve, reject)=> {
        saveFile.data.pipe(download);
        download.on("close", resolve);
        download.on("error", console.error);
     });
  }
}

async function checkDirValidity(directory) {
  if (fs.existsSync(directory)){ await rimraf.sync(directory); }
  fs.mkdirSync(directory);
}

async function prepare_pipeline(newItem) {
  console.log("Step 0: Prepare for PG.");
  if (newItem.photoUrls.length == 0 || newItem._id === "") throw 'Failed to process new item.';

  // Create new directories (and delete existing, if any)
  var inputDir = 'pg-inputs/' + newItem._id;
  await checkDirValidity(inputDir);
  var outputDir = 'pg-outputs/' + newItem._id;
  await checkDirValidity(outputDir);
  var graphDir = 'pg-graphs/' + newItem._id;
  await checkDirValidity(graphDir);

  await download(newItem.photoUrls, inputDir);
  console.log("All photos downloaded.");
}

module.exports = prepare_pipeline;
