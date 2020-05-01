const express = require('express');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const routes = require('./routes/api');
const path = require('path');
const s3Router = require('react-s3-uploader/s3router')
var cors = require('cors');

// var sign_s3 = require('./controllers/sign_s3');
require('dotenv').config();

const app = express();
app.use(cors());
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());
// app.use('/sign_s3', sign_s3.sign_s3);

// app.use('/s3', (req, res, next) => { s3Router({
//     bucket: process.env.AWS_BUCKET_NAME,
//     region: process.env.AWS_REGION,
//     headers: {'Access-Control-Allow-Origin': '*'},
//     ACL: 'public-read',
//     // uniquePrefix: true //set false to preserve original filenames
//   })(req, res, next)
// })

app.use('/s3', require('react-dropzone-s3-uploader/s3router')({
  bucket: process.env.AWS_BUCKET_NAME,
  region: process.env.AWS_REGION,
  headers: {'Access-Control-Allow-Origin': '*'},
  ACL: 'public-read',
}));

const port = process.env.PORT || 5000;
console.log("port is ", port)
//connect to the database
mongoose.connect(process.env.DB, {useNewUrlParser: true})
  .then(() => console.log(`Database connected successfully`))
  .catch(err => console.log(err));

//since mongoose promise is deprecated, we override it with node's promise
mongoose.Promise = global.Promise;

app.use('/api', routes);

app.use((req, res, next) => {
  res.send('Welcome to Express');
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`)
});