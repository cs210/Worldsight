const mongoose = require('mongoose');
var timestamps = require('mongoose-timestamp');
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
ItemSchema.plugin(timestamps);

//create model for todo
const Item = mongoose.model('Item', ItemSchema);
module.exports = Item;
