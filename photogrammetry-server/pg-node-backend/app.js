const http = require('http');
const mongoose = require('mongoose');
const Item = require('./models/item.js');

// Use environment variables with dotenv
require('dotenv').config();

// Connect to mongoose
mongoose.connect(process.env.DB, {useNewUrlParser: true})
  .then(() => console.log(`Database connected successfully`))
  .catch(err => console.log(err));

Item.watch().on('change', async (data) => {
  const newItem = data.fullDocument;
  console.log("New item: ", newItem);

  // Check item is valid (includes photoURLs, etc)
  // create directory in pg_inputs named the newItem._id
  // download the images from newItem.photoURLs
  // RUN PG. convert to mesh (output in pg_outputs)
  // upload mesh to S3, then update the meshURL field of this item in db
  // send completion email with mesh-works.io/mesh/{newItem._id} as link
  // delete downloaded directory in pg_inputs
});





// Create an instance of the http server to handle HTTP requests
let app = http.createServer((req, res) => {
  // Set a response type of plain text for the response
  res.writeHead(200, {'Content-Type': 'text/plain'});
  // Send back a response and end the connection
  res.end('Hello World!\n');
});

app.listen(8080, '127.0.0.1');
console.log('Node server running on port 8080');
