const http = require('http');
const mongoose = require('mongoose');
var itemProcess = require('./item-processor.js');

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
  await itemProcess(newItem);
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
