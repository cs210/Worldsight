import React, {Component} from 'react';
import {Container, Grid, Header, Input, Button} from 'semantic-ui-react';
import emailjs from 'emailjs-com';
import S3Upload from 'react-s3-uploader/s3upload'


import FileUploader from './FileUploader'
import Uploader from './Uploader'


//params for uploading to S3.
const S3_BUCKET_URL= 'https://meshworks.s3.amazonaws.com/'
const uploadOptions = {
  server: 'http://localhost:5000',
  s3Url: S3_BUCKET_URL
}

// params for sending out email.
const service_id = "gmail";
const user_id = "user_GPvH16KTRm7olTHDX1cdy"
const template_id = "template_jPWa5xhn";


class UploadPage extends Component {

  state = {
    email: "",
    filesReady: []
  }

  handleChange = (e) => {
    this.setState({
      email: e.target.value
    });
  }

  handleFileChangeStatus = (file, status, allFiles) => {
    if (status == 'done') {
      this.state.filesReady.push(file.file)
    }
  }

  sendEmail = () => {
    var template_params = {
     "reply_to": this.state.email,
    }
    emailjs.send(service_id, template_id, template_params, user_id)
  }

  uploadFiles = () => {
    console.log(this.state.filesReady);

    const options = {
      ...this.state.filesReady,
      ...uploadOptions,
    }
    new S3Upload(options);
  }

  upload = () => {
    this.uploadFiles();
    this.sendEmail();
  }

  render() {
    return (
      <Grid textAlign="center">
        <Grid.Column style={{width: '60%'}}>
            <FileUploader
              onChangeStatus={this.handleFileChangeStatus}/>
            <Uploader />
            <Header as='h3'> Where should we send this to later? </Header>
            <Input
              onChange={this.handleChange}
              defaultValue='worldsightvr@gmail.com'
            />
            <Container style={{marginTop:'5em'}}>
              <Button primary onClick={this.upload}> UPLOAD! </Button>
            </Container>
          </Grid.Column>
      </Grid>

    )
  }
}

export default UploadPage;
