const mongoose = require('mongoose');
const Schema = mongoose.Schema;

//create schema for todo
const ItemSchema = new Schema({
  email: String,
  name: String,
  photoURL: [String],
  videoURL: String,
  meshURL: String,
  tags: [String],
});

//create model for todo
const Item = mongoose.model('item', ItemSchema);
module.exports = Item;
