import React, {Component} from 'react';
import {Container, Message, Grid, Header, Input, Button} from 'semantic-ui-react';
import S3Upload from 'react-s3-uploader/s3upload.js';
import axios from 'axios';

import ItemInput from '../../components/ItemInput';
import FileUploader from '../../components/FileUploader';

//params for uploading to S3.
const S3_BUCKET_URL= 'https://meshworks.s3.amazonaws.com/';
const uploadOptions = {
  server: 'http://localhost:5000',
  s3path: S3_BUCKET_URL,
  signingUrl: "/s3/sign"
}

const emptyItem = {
    email: "",
    name: "",
    photoUrls: [],
    videoUrl: "",
    meshUrl: "",
    tags: [],
  };

class UploadPage extends Component {

  state = {
    // Item info
    email: "",
    name: "",
    currentTags: [],
    photoUrls: [],

    // states only for upload process
    filesReady: [],
    submitCompleteMessage: false,
    fileUploadedSoFar: 0,
  }

  // function that's passed onto ItemInput, used for populating text fields
  handleItemInfoChange = (email, name, tags) => {
    this.setState({
      email: email,
      name: name,
      tags: tags.map(function(tagItem) {return tagItem.value;})
    });
  }

  // Let's the user close the upload finished! module
  handleSubmitCompleteMessageDismiss = () => {
    this.setState({submitCompleteMessage: false});
  }

  /* UPLOAD PROCESS */

  // Finally, send the current item to Database
  submitToMongoDB = () => {
    let newItem = {
      email: this.state.email,
      name: this.state.name,
      photoUrls: this.state.photoUrls,
      videoUrl: "",
      meshUrl: "",
      tags: this.state.tags,
    };
    console.log("Posting the new item to DB: ", newItem)
    axios.post('/api/items', newItem)
      .then(res => {
        if(res.data){
          console.log("Posting to DB success!");
          this.setState({
            submitCompleteMessage: true,
            fileUploadedSoFar: 0
          });
        }
      })
      .catch(err => console.log(err));
  }

  // Passed onto the dropbox implementation.
  handleFileChangeStatus = (file, status, allFiles) => {
    if (status === 'done') {
      this.state.filesReady.push(file);
    }
  }
  onProgress = (percent, status, file) => {
    console.log("Progress percent: " + percent)
  }
  onError = (status, file) => {
    console.log("Error uploading: " + status)
  }

  // Called after each file is put to s3
  onFinishS3Put = (signResult, file) => {
    console.log(signResult, file);

    let newPhotoURL = S3_BUCKET_URL+signResult.fileKey;
    this.setState(prevState => ({
      photoUrls: [...prevState.photoUrls, newPhotoURL],
      fileUploadedSoFar: this.state.fileUploadedSoFar + 1
    }));
    if (this.state.fileUploadedSoFar == this.state.filesReady.length) {
      this.submitToMongoDB();
    }
  }


// Creates s3 uploader, which then prepares the file to be uploaded
  createS3Uploader = () => {
    var S3Uploader;

    var filesArray = this.state.filesReady.map(function(item) {return item.file;});
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

  // Check required fields have been populated, then initiate the upload process
  submitEverything = async () => {
    if (this.state.name === "") {
      console.log('Mesh Name required');
    } else if (this.state.email === "") {
      console.log('Email required');
    } else {
      var S3Uploader = await this.createS3Uploader();
    }
  }

  render() {
    var submitCompleteMessage =
      <Message floating
        onDismiss={this.handleSubmitCompleteMessageDismiss}
        header='Upload complete!'
        content='Your files have been submitted for 3d magic! Check your inbox in a few minutes.'
      />

    return (
      <Container style = {{marginLeft: '20vw', marginRight: '20vw'}}>
        <Header as='h1' style={{verticalAlign: 'top', marginBottom: '2.5em'}}> Create your Mesh </Header>

        <Grid textAlign="left" stackable relaxed verticalAlign='top' columns={2}>
          <Grid.Row stretched>
            <Grid.Column >
              <Container>
                <FileUploader onChangeStatus={this.handleFileChangeStatus} />
              </Container>

            </Grid.Column>
            <Grid.Column>
              <Container style={{marginBottom: '5em'}}>
                <ItemInput handleItemInfoChange = {this.handleItemInfoChange}/>
              </Container>

              <Container>
                <Button primary onClick={this.submitEverything} style={{marginBottom: '3em'}}>
                 Submit
                </Button>
                {this.state.submitCompleteMessage ? submitCompleteMessage : null}
              </Container>
            </Grid.Column>
          </Grid.Row>
        </Grid>
      </Container>
    )
  }
}

export default UploadPage;
