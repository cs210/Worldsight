import React, {Component} from 'react';
import axios from 'axios';

import ItemInput from './ItemInput';
import ListItem from './ListItem';

import {Grid, Header} from 'semantic-ui-react';

class Item extends Component {

  submitToMongoDB() {
    this.refs.item.uploadItemInfo();
  }

  state = {
    items: []
  }

  componentDidMount(){
    this.getItems();
  }

  getItems = () => {
    axios.get('/api/items')
      .then(res => {
        if(res.data){
          this.setState({
            items: res.data
          })
        }
      })
      .catch(err => console.log(err))
  }

  deleteItem = (id) => {
    axios.delete(`/api/items/${id}`)
      .then(res => {
        if(res.data){
          this.getItems()
        }
      })
      .catch(err => console.log(err))
  }

  render() {
    let { items } = this.state.items;

    return(
      <div>
      <br></br>
      <br></br>
      <Grid textAlign="center">
        <Grid.Column style={{height: '60%'}}>
          <Header size='huge' >Submission Details:</Header>
          <ItemInput ref="item" getItems={this.getItems}/>
          <br></br>
          <Header size='large' >Your Meshes:</Header>
          <ListItem items={items} deleteItem={this.deleteItem}/>
        </Grid.Column>
      </Grid>          
      </div>
    )
  }
}

export default Item;
