const express = require ('express');
const router = express.Router();
const Todo = require('../models/todo');
const Item = require('../models/item');

router.get('/todos', (req, res, next) => {
  // This will return all the data, exposing only the id and action field to the clinet
  Todo.find({}, 'action')
    .then(data => res.json(data))
    .catch(next)
});

router.post('/todos', (req, res, next) => {
  if(req.body.action){
    Todo.create(req.body)
      .then(data => res.json(data))
      .catch(next)
  }else{
    res.json({
      error: "The input field is empty"
    })
  }
});

router.delete('/todos/:id', (req, res, next) => {
  Todo.findOneAndDelete({"_id": req.params.id})
    .then(data => res.json(data))
    .catch(next)
})

router.get('/items', (req, res, next) => {
  Item.find({})
    .then(data => res.json(data))
    .catch(next)
});

router.post('/items', (req, res, next) => {
  if(req.body){
    Item.create(req.body)
      .then(data => res.json(data))
      .catch(next)
  }else {
    res.json({
      error: "The input field is empty"
    })
  }
});

router.get('/items/:id', (req, res, next) => {
  Item.findOne({"_id": req.params.id})
    .then(data => res.json(data))
    .catch(next)
});

router.delete('/items/:id', (req, res, next) => {
  Item.findOneAndDelete({"_id": req.params.id})
    .then(data => res.json(data))
    .catch(next)
})

module.exports = router;
