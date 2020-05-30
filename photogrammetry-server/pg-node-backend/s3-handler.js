var AWS = require('aws-sdk');
const fs = require('fs');
require('dotenv').config();


const s3 = new AWS.S3({
    accessKeyId: process.env.AWS_ACCESS_KEY,
    secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY
});

async function uploadFile(fileName, key) {
  //const data = await fs.readFile(fileName);
  const data = fs.createReadStream(fileName);
  data.on('open', () => {
    console.log(fileName + ' filestream open')
  })
  data.on('end', () => {
    console.log(fileName + ' filestream end')
  })
  data.on('close', () => {
    console.log(fileName + ' filestream close')
  })

  const params = {
      Bucket: process.env.AWS_BUCKET_NAME, // pass your bucket name
      Key: key,
      Body: data
  };

  console.log("Start upload");
  let s3Response = await s3.upload(params).promise();
  //if(e) throw e;
  console.log(`File uploaded successfully at ${s3Response.Location}`)

  return s3Response.Location;
};

module.exports = uploadFile;
