const express = require('express');
const bodyParser = require('body-parser')
const path = require('path');
const app = express();
app.use(express.static(path.join(__dirname, 'build')));

app.get('/ping', function (req, res) {
	 return res.send('pong');
});

app.get('/', function (req, res) {
	  res.sendFile(path.join(__dirname, 'build', 'index.html'));
});

app.use('/s3', require('react-dropzone-s3-uploader/s3router')({
	bucket: process.env.AWS_BUCKET_NAME,
	region: process.env.AWS_REGION,
	headers: {'Access-Control-Allow-Origin': '*'},
	ACL: 'public-read',
  }));
  
const port = process.env.PORT || 8080;
app.listen(port, () => {
	console.log(`Server running on port ${port}`)
});
