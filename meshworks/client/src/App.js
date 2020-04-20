import React, { Component } from 'react';
import axios from 'axios';
import Todo from './components/Todo';
import './App.css';

class App extends Component {
  constructor(props){
    super(props);
    this.state = {
      success : false,
      url : "",
      error: false,
      errorMessage : ""
    }
  }

  handleChange = (event) => {
    this.setState({success: false, url : ""});
  }
  
  handleUpload = (event) => {
    console.log("upload event!!!!!!!!!!")
    // uploadInput: stores all files from file input field
    let file = this.uploadInput.files[0];
    // Split filename to name and type
    let fileParts = this.uploadInput.files[0].name.split('.');
    let fileName = fileParts[0];
    let fileType = fileParts[1];
    console.log("Preparing upload of filename ", fileName, "filetype", fileType);
    axios.post("http://localhost:5000/sign_s3",{
      fileName: fileName,
      fileType: fileType
    }).then(response => { //response is returnData object with signed request & url
      var returnData = response.data.data.returnData;
      var signedRequest = returnData.signedRequest;
      var url = returnData.url;
      this.setState({url: url})
      console.log("Received signed request " + signedRequest);

      // headers verifies to AWS S3 that we are sending the same filetype
      var options = {
        headers: {
          'Content-Type': fileType
        }
      };

      //put request to axios with S3 link, send file with headers
      axios.put(signedRequest, file, options)
      .then(result => {
        console.log("Response from s3")
        this.setState({success: true});
      }).catch(error => {
        alert(JSON.stringify(error));
      })
    }).catch(error => {
      alert(JSON.stringify(error));
    })
  }

  render() {
    const SuccessMessage = () => (
      <div style={{padding:50}}>
        <h3 style={{color: 'green'}}>Upload Successful</h3>
        <a href={this.state.url}>Access the file here</a>
        <br/>
      </div>
    )
    const ErrorMessage = () => (
      <div style={{padding:50}}>
        <h3 style={{color: 'red'}}>Upload failure</h3>
        <span style={{color: 'red', backgroundColor: 'black'}}>ERROR: </span>
        <span>{this.state.errorMessage}</span>
        <br/>
      </div>
    )
    return (
      <div className="App">
        <Todo />
        <center>
          <h1>UPLOAD A FILE</h1>
          {this.state.success ? <SuccessMessage/> : null}
          {this.state.error ? <ErrorMessage/> : null}
          <input onChange={this.handleChange} ref={(ref) => { this.uploadInput = ref; }} type="file"/>
          <br/>
          <button onClick={this.handleUpload}>Upload</button>
        </center>
      </div>
    );
  }
}

export default App;
