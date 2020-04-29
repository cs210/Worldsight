import React, { Component } from "react";
import { Header, Grid, Button } from "semantic-ui-react";
import DropzoneS3Uploader from 'react-dropzone-s3-uploader';
require('dotenv').config();

class UploadDisplay extends React.Component {
  renderFileUpload = (uploadedFile, i) => {
    const {filename, fileUrl, file} = uploadedFile

    return (
      <div key={i}>
        <img src={fileUrl} />
        <p>{file.name}</p>
      </div>
    )
  }

  render() {
    const {uploadedFiles, s3url} = this.props
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

  changeHandle = (event) => {
    const inputValue = event.target.value;
    const propertyKey = event.target.getAttribute('name');
    console.log('propertyKey', propertyKey);
    console.log('inputValue', inputValue);
    this.setState({
      inventoryEntry: {
        ...this.state.inventoryEntry,
        [propertyKey]: inputValue,
      }
    });
  }

  state = {
    success: false,
    url: "",
    error: false,
    errorMessage: "",
  };

  handleChange = (event) => {
    this.setState({ success: false, url: "" });
  };

  handleFinishedUpload = info => {
    console.log('File uploaded with filename', info.filename)
    console.log('Access it on s3 at', info.fileUrl)
  }

  sendMessage(message, image) {
    const newMessage = {
      type: 'image',
      image: image,
    };
  }

  render() {
    // const SuccessMessage = () => (
    //   <div style={{ padding: 50 }}>
    //     <Header size="medium" color="green">
    //       {" "}
    //       Upload Successful{" "}
    //     </Header>
    //     <img
    //       src={this.state.url}
    //       width="300"
    //       alt="Successfully uploaded image"
    //     ></img>
    //     <br />
    //   </div>
    // );
    // const ErrorMessage = () => (
    //   <div style={{ padding: 50 }}>
    //     <Header as="h1" color="red">
    //       {" "}
    //       Upload failure{" "}
    //     </Header>
    //     <span style={{ color: "red", backgroundColor: "black" }}>ERROR: </span>
    //     <span>{this.state.errorMessage}</span>
    //     <br />
    //   </div>
    // );
    const style = {
      height: 200,
      border: 'dashed 2px #999',
      borderRadius: 5,
      position: 'relative',
      cursor: 'pointer',
    };
    const s3_url = process.env.AWS_URL
    const uploadOptions = {
      style,
      server: 'http://localhost:5000',
      s3Url: {s3_url},
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
            <DropzoneS3Uploader onFinish={this.handleFinishedUpload} {...uploadOptions} />
          </Grid.Column>
        </Grid>
      </div>
    );
  }
}

export default Uploader;