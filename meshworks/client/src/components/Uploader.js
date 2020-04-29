import React, { Component } from "react";
import { Header, Grid } from "semantic-ui-react";
import DropzoneS3Uploader from 'react-dropzone-s3-uploader';

const AWS_BUCKET_URL='https://meshworks.s3.amazonaws.com/'
class UploadDisplay extends React.Component {
  renderFileUpload = (uploadedFile, i) => {
    const {filename, fileUrl, file} = uploadedFile
    const file_url = AWS_BUCKET_URL+filename
    return (
      <div key={i}>
        <img src={file_url} />
        <p>{file.name}</p>
      </div>
    )
  }

  render() {
    const {uploadedFiles, s3Url} = this.props
    return (
      <div> 
        {uploadedFiles.map(this.renderFileUpload)}
      </div>
    )
  }
}

class Uploader extends Component {
  constructor(props) {
    super(props);
  }

  state = {
    success: false,
    url: "",
    error: false,
    errorMessage: "",
  };
  
  handleFinishedUpload = info => {
    console.log('File uploaded with filename', info.filename)
    console.log(process.env.AWS_URL)
    console.log('Access it on s3 at', AWS_BUCKET_URL+info.filename)
  }

  render() {
    const style = {
      height: 200,
      border: 'dashed 2px #999',
      borderRadius: 5,
      position: 'relative',
      cursor: 'pointer',
    };
    const uploadOptions = {
      style,
      server: 'http://localhost:5000',
      s3Url: {AWS_BUCKET_URL},
    }
    
    return (
      <div>
        <Grid
          textAlign="center"
          style={{ height: "100vh" }}
          verticalAlign="middle"
        >
          <Grid.Column style={{ maxWidth: 450 }}>
            <Header size="huge"> UPLOAD A FILE </Header>
            <DropzoneS3Uploader onFinish={this.handleFinishedUpload} {...uploadOptions}><UploadDisplay /></DropzoneS3Uploader>
          </Grid.Column>
        </Grid>
      </div>
    );
  }
}

export default Uploader;