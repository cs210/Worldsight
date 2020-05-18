import React, {Component} from 'react';
import axios from 'axios';

import ItemInput from './ItemInput';
import ListItem from './ListItem';

import {Grid, Header} from 'semantic-ui-react';

class Item extends Component {

  submitToMongoDB(photoURLs) {
    this.refs.item.uploadItemInfo(photoURLs);
  }

  state = {
    items: [],email:''
  }

  componentDidMount(){
    this.getItems();
  }

  handleEmail = (e) => {
    this.setState({email: e});
    this.props.getParentEmailHandler(e);
  } 

  getItems = () => {
    axios.get('/api/items')
      .then(res => {
        if(res.data){
          console.log(res.data);
          this.setState({
            items: res.data
          })
        }
      })
      .catch(err => console.log(err))
  }

  render() {
    let { items } = this.state;

    return(
      <div>
        <ItemInput ref="item" getItems={this.getItems} handleEmailChange={this.handleEmail}/> 
      </div>
    )
  }
}

export default Item;

