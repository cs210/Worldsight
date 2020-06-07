const mongoose = require('mongoose');
const prepare_pipeline = require('./prepare-pipeline.js');
const item_processor = require('./item-processor.js');
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

  await prepare_pipeline(newItem);
  await item_processor(newItem);

});
