const mongoose = require('mongoose');
var timestamps = require('mongoose-timestamp');
const Schema = mongoose.Schema;

//create schema for todo
const ItemSchema = new Schema({
  email: {type: String, default: ""},
  name: {type: String, default: ""},
  photoUrls:  {type: [String], default: []},
  videoUrl: {type: String, default: ""},
  meshUrl: {type: String, default: ""},
  tags: {type: [String], default: []},
});
ItemSchema.plugin(timestamps);

//create model for todo
const Item = mongoose.model('Item', ItemSchema);
module.exports = Item;
