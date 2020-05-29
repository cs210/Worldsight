var AWS = require('aws-sdk');
var bucketName = "meshworks"
var bucketRegion = "us-east-1"

module.exports = {
  deleteFileFromS3: function (fileName) {
      try {
	  var params = {
	      Bucket: bucketName,
	      // we can specify folders by adding foldername in the quotes
	      Key: "" + fileName
	  };
	  var deleteObjectPromise = new AWS.S3({
	      apiVersion: '2006-03-01'
	  }).deleteObject(params).promise();

	  return deleteObjectPromise.then(
	      function(data) {
		  console.log("Successfully deleted file from following bucket : " + params.Bucket + ' Key' + params.key);
	      });
      } catch (error) {
	  console.error("Error while deleting file from S3 :", error, error.stack);
      }
  }
};
