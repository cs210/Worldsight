import React, {Component} from 'react';
import axios from 'axios';
import {Grid, Input, Dropdown, Header} from 'semantic-ui-react';

const DEFAULT_STATE = {
  email: "",
  name: "",
  photoURL: [],
  videoURL: "",
  meshURL: "",
  tags: [],
}

var currentTags = [];

class ItemInput extends Component {
  state = DEFAULT_STATE

  uploadItemInfo = () => {
    this.state.tags = currentTags.map(function(o) { return o.key });

    console.log("state is ", this.state)
    if (this.state.name === "") {
      console.log('Mesh Name required');
    } else if (this.state.email === "") {
      console.log('Email required');
    } else {
      axios.post('/api/items', this.state)
        .then(res => {
          if(res.data){
            this.props.getItems();
            this.setState(DEFAULT_STATE);
          }
        })
        .catch(err => console.log(err));
    }
  }

  updateName = (e) => {
    this.setState({
      name: e.target.value
    });
  }

  updateEmail = (e) => {
    this.setState({
      email: e.target.value
    });
  }

  render() {
    let {email, name, photoURL, videoURL, meshURL, tags} = this.state;
    return (
      <div>
      <Grid textAlign="center">
        <Grid.Column style={{width: '60%'}}>
          <Input label={{ content: 'Email' }} labelPosition='left' placeholder='Your email here' onChange={this.updateEmail}/>
        <Grid.Row style={{height: '10%'}}></Grid.Row>
          <Input label={{ content: 'Name' }} labelPosition='left' placeholder='Enter item name' onChange={this.updateName}/>
        <Grid.Row style={{height: '10%'}}></Grid.Row>
          <Header as='h3'> Add some tags? </Header>
          <Dropdown
            fluid
            clearable
            search
            selection
            multiple
            allowAdditions
            onAddItem={(event, data) => currentTags.push({key: data.value, text: data.value, value: data.value})}
            options={currentTags}
          />
        </Grid.Column>
      </Grid>  
      </div>
    )
  }

}

export default ItemInput
