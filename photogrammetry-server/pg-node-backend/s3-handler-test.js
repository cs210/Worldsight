var s3Handler = require('./s3-handler');

s3Handler.deleteFileFromS3('0a4f9799-e69a-484f-bdcf-a5d88926ffc5_download.jpg').then(function (data) {
    console.log('Response from AWS S3: ', data);
});

