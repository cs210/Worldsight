import React, {Component} from 'react';
import {Container, Message, Grid, Header, Input, Button} from 'semantic-ui-react';
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

class UploadPage extends Component {

  state = {
    filesReady: [],
    fileUploadsRemaining: 0,
    submitCompleteMessage: false,
    currentTags: [],
    photoURLs: []
  }

  handleSubmitCompleteMessageDismiss = () => {
    this.setState({submitCompleteMessage: false});
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
    console.log(this.state.fileUploadsRemaining, " files remaining")
    console.log(signResult, file)
    var updatedPhotoURLs = this.state.photoURLs
    updatedPhotoURLs.push(S3_BUCKET_URL+signResult.fileKey)
    this.setState({photoURLs: updatedPhotoURLs})
    this.setState({submitCompleteMessage: true});
    this.setState({fileUploadsRemaining: this.state.fileUploadsRemaining - 1})
    console.log("uploaded, now ", this.state.fileUploadsRemaining, " files remaining")
    if (this.state.fileUploadsRemaining === 0) {
      console.log("all files uploaded, submitting to mongodb")
      this.refs.items.submitToMongoDB(this.state.photoURLs);
    }
  }

  createS3Uploader = () => {
    var S3Uploader;
    this.setState({fileUploadsRemaining: this.state.filesReady.length})
    var filesArray = this.state.filesReady.map(function(item){ return item.file;});
    const options = {
      files: filesArray,
      onFinishS3Put: this.onFinishS3Put,
      onError: this.onError,
      onProgress: this.onProgress,
      ...uploadOptions,
    }
    return new Promise(function(resolve, reject) {
      S3Uploader = new S3Upload(options);
      resolve(S3Uploader);
    });
  }



  submitEverything = async () => {
    var S3Uploader = await this.createS3Uploader();
    console.log("S3Uploader Created")
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
