const express = require('express');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const csp = require(`helmet-csp`)
const routes = require('./routes/api');
const path = require('path');
var cors = require('cors');
import serverRenderer from './server-side-renderer';

const app = express();

require('dotenv').config();

// DATABASE
//connect to the database
mongoose.connect(process.env.DB, {useNewUrlParser: true})
  .then(() => console.log(`Database connected successfully`))
  .catch(err => console.log(err));

//since mongoose promise is deprecated, we override it with node's promise
mongoose.Promise = global.Promise;

//ROUTER
const router = express.Router();
// root (/) should always serve our server rendered page
//router.use('*', serverRenderer);
router.use('^/$', serverRenderer);
// other static resources should just be served as they are
/*
router.use(express.static(
    path.resolve(__dirname, 'client', 'build'),
    { maxAge: '30d' },
));
*/
//APP
app.use(router);

app.use(cors());
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());
/*
app.use('/s3', require('react-dropzone-s3-uploader/s3router')({
  bucket: process.env.AWS_BUCKET_NAME,
  region: process.env.AWS_REGION,
  headers: {'Access-Control-Allow-Origin': '*'},
  ACL: 'public-read',
}));

app.use('/api', routes);
*/
app.use(csp({
  directives: {
    defaultSrc: [`'self'`],
    imgSrc: [`'self'`, `imgur.com`]
  }
}))
app.use((req, res, next) => {
  res.send('Welcome to Express');
});

const port = process.env.PORT || 5000;
app.listen(port, () => {
  console.log(`Server running on port ${port}`)
});
