import React, {Component} from 'react';
import axios from 'axios';
import {Grid, Input, Dropdown, Header} from 'semantic-ui-react';
import emailjs from 'emailjs-com';

const DEFAULT_STATE = {
  email: "",
  name: "",
  photoUrls: [],
  videoUrl: "",
  meshUrl: "",
  tags: [],
};

// params for sending out email.
const service_id = "gmail";
const user_id = "user_GPvH16KTRm7olTHDX1cdy"
const template_id = "template_jPWa5xhn";

var currentTags = [];

class ItemInput extends Component {
  state = DEFAULT_STATE

  sendEmail = () => {
    var template_params = {
    "reply_to": this.state.email,
    }
    emailjs.send(service_id, template_id, template_params, user_id)
  }
  
  uploadItemInfo = (photoURLs) => {
    this.setState({photoUrls: photoURLs});
    this.state.tags = currentTags.map(function(o) { return o.key });
    if (this.state.name === "") {
      console.log('Mesh Name required');
    } else if (this.state.email === "") {
      console.log('Email required');
    } else {
      const newItem = {
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
      this.sendEmail();
      console.log("Email Sent")
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
    let {email, name, photoUrls, videoUrl, meshUrl, tags} = this.state;
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
