import React, {Component} from 'react';
import axios from 'axios';
import {Grid, Input, Dropdown, Header} from 'semantic-ui-react';

const DEFAULT_STATE = {
  yourName: "",
  email: "",
  name: "",
  photoUrls: [],
  videoUrl: "",
  meshUrl: "",
  tags: [],
};

var currentTags = [];

class ItemInput extends Component {
  state = DEFAULT_STATE

  uploadItemInfo = (photoURLs) => {
    this.setState({photoUrls: photoURLs});
    this.state.tags = currentTags.map(function(o) { return o.key });
    if(this.state.yourName === ""){
      console.log("Please enter your name.");
    }
    if (this.state.name === "") {
      console.log('Mesh Name required');
    } else if (this.state.email === "") {
      console.log('Email required');
    } else {
      const newItem = {
        yourName: this.state.yourName,
        email: this.state.email,
        name: this.state.name,
        photoUrls: this.state.photoUrls,
        videoUrl: this.state.videoUrl,
        meshUrl: this.state.meshUrl,
        tags: this.state.tags,
      };
      console.log("posting this state, ", newItem)
      axios.post('/api/items', newItem)
        .then(res => {
          if(res.data){
            this.props.getItems();
            this.setState(DEFAULT_STATE);
          }
        })
        .catch(err => console.log(err));
    }
  }

  updateYourName = (e) => {
    this.setState({
      yourName: e.target.value
    });

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
    this.props.handleEmailChange(e.target.value);
  }

  render() {
    let {email, name, photoUrls, videoUrl, meshUrl, tags} = this.state;
    return (
      <div>
      <Grid textAlign="left" style={{ paddingLeft: '2%'}}>
        <Grid.Column style={{width: '30%'}} style={{ paddingRight: '100%'}}>
          <Input label={{ content: 'Email' }} labelPosition='left' placeholder='Your email here' onChange={this.updateEmail}/>
        </Grid.Column>
        <Grid.Column style={{width: '30%'}} style={{ paddingRight: '100%'}}>
            <Input label={{ content: 'Your Name' }} labelPosition='left' placeholder='Enter your name' onChange={this.updateYourName}/>
        </Grid.Column>
        <Grid.Column style={{width: '30%'}} style={{ paddingRight: '100%'}}>
            <Input label={{ content: 'Mesh Name' }} labelPosition='left' placeholder='Enter item name' onChange={this.updateName}/>
        </Grid.Column>
        <Grid.Column style={{width: '60%'}}>
          <Header as='h3'> Relevant tags: </Header>
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
