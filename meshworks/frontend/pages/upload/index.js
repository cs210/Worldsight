import React, {Component} from 'react';
import {Container, Message, Grid, Header, Input, Button} from 'semantic-ui-react';
import emailjs from 'emailjs-com';
import S3Upload from 'react-s3-uploader/s3upload.js'

import Item from '../../components/Item'
import FileUploader from '../../components/FileUploader'

//params for uploading to S3.
const S3_BUCKET_URL= 'https://meshworks.s3.amazonaws.com/'
const uploadOptions = {
  server: 'http://localhost:5000',
  s3path: S3_BUCKET_URL,
  signingUrl: "/s3/sign"
}

// params for sending out email.
const service_id = "gmail";
const user_id = "user_GPvH16KTRm7olTHDX1cdy"
const template_id = "template_jPWa5xhn";

class UploadPage extends Component {

  state = {
    email: "",
    filesReady: [],
    submitCompleteMessage: false,
    currentTags: [],
    photoURLs: []
  }

  handleSubmitCompleteMessageDismiss = () => {
    this.setState({submitCompleteMessage: false});
  }

  handleChange = (e) => {
    this.setState({
      email: e.target.value
    });
  }

  // This comes from the dropbox implementation.
  handleFileChangeStatus = (file, status, allFiles) => {
    if (status === 'done') {
      this.state.filesReady.push(file)
    }
  }

  onProgress = (percent, status, file) => {
    console.log("Progress percent: " + percent)
  }

  onError = (status, file) => {
    console.log("Error uploading: " + status)
  }

  onFinishS3Put = (signResult, file) => {
    console.log(signResult, file)
    var updatedPhotoURLs = this.state.photoURLs
    updatedPhotoURLs.push(S3_BUCKET_URL+signResult.fileKey)
    this.setState({photoURLs: updatedPhotoURLs})
    this.setState({submitCompleteMessage: true});
  }

  uploadFiles = () => {
    var uploadComplete;
    var filesArray = this.state.filesReady.map(function(item){ return item.file;});
    const options = {
      files: filesArray,
      onFinishS3Put: this.onFinishS3Put,
      onError: this.onError,
      onProgress: this.onProgress,
      ...uploadOptions,
    }
    return new Promise(function(resolve, reject) {
      uploadComplete = new S3Upload(options);
      resolve(uploadComplete);
    });
  }

  sendEmail = () => {
    var template_params = {
     "reply_to": this.state.email,
    }
    emailjs.send(service_id, template_id, template_params, user_id)
  }

  submitItemInfo =  () => {
    this.refs.items.submitToMongoDB(this.state.photoURLs);
  }

  submitEverything = async () => {
    var uploadComplete = await this.uploadFiles();
    console.log("Upload to S3 Complete")
    this.sendEmail();
    this.submitItemInfo();
  }

  render() {
    var submitCompleteMessage =
      <Message floating
        onDismiss={this.handleSubmitCompleteMessageDismiss}
        header='Upload complete!'
        content='Your files have been submitted for 3d magic! Check your inbox in a few minutes.'
      />

    return (
      <Grid textAlign="center">
        <Grid.Column style={{width: '60%'}}>
            <Header as='h1'> Create your mesh today! </Header>
            <FileUploader
              onChangeStatus={this.handleFileChangeStatus}/>
            <Header as='h3'> Where should we send this to later? </Header>
            <Input
              onChange={this.handleChange}
              defaultValue='youremail@example.com'
            />
            <Item ref="items"/>
            <Container style={{marginTop:'5em'}}>
              <Button primary onClick={this.submitEverything}> UPLOAD! </Button>
              {this.state.submitCompleteMessage ? submitCompleteMessage : null}
            </Container>
          </Grid.Column>
      </Grid>
    )
  }
}

export default UploadPage;
