import React, { Component } from "react";
import axios from "axios";
import { Header, Grid, Button } from "semantic-ui-react";

class Uploader extends Component {
  state = {
    success: false,
    url: "",
    error: false,
    errorMessage: "",
  };

  handleChange = (event) => {
    this.setState({ success: false, url: "" });
  };

  handleUpload = (event) => {
    console.log("upload event!!!!!!!!!!");
    // uploadInput: stores all files from file input field
    let file = this.uploadInput.files[0];
    // Split filename to name and type
    let fileParts = this.uploadInput.files[0].name.split(".");
    let fileName = fileParts[0];
    let fileType = fileParts[1];
    console.log(
      "Preparing upload of filename ",
      fileName,
      "filetype",
      fileType
    );
    // old       .post("http://localhost:5000/sign_s3", {
    axios.post("http://mesh-works.io/sign_s3", {
        fileName: fileName,
        fileType: fileType,
      })
      .then((response) => {
        //response is returnData object with signed request & url
        var returnData = response.data.data.returnData;
        var signedRequest = returnData.signedRequest;
        var url = returnData.url;
        this.setState({ url: url });
        console.log("Received signed request " + signedRequest);

        // headers verifies to AWS S3 that we are sending the same filetype
        var options = {
          headers: {
            "Content-Type": fileType,
          },
        };

        //put request to axios with S3 link, send file with headers
        axios
          .put(signedRequest, file, options)
          .then((result) => {
            console.log("Response from s3");
            this.setState({ success: true });
          })
          .catch((error) => {
            alert(JSON.stringify(error));
          });
      })
      .catch((error) => {
        alert(JSON.stringify(error));
      });
  };

  render() {
    const SuccessMessage = () => (
      <div style={{ padding: 50 }}>
        <Header size="medium" color="green">
          {" "}
          Upload Successful{" "}
        </Header>
<<<<<<< HEAD
        <img src={this.state.url} width="300" alt="Successfully loaded image" />
=======
        <img
          src={this.state.url}
          width="300"
          alt="Successfully uploaded image"
        ></img>
>>>>>>> 2ddebeb5a50959810ea4d21fa973444175f964e7
        <br />
      </div>
    );
    const ErrorMessage = () => (
      <div style={{ padding: 50 }}>
        <Header as="h1" color="red">
          {" "}
          Upload failure{" "}
        </Header>
        <span style={{ color: "red", backgroundColor: "black" }}>ERROR: </span>
        <span>{this.state.errorMessage}</span>
        <br />
      </div>
    );
    return (
      <div>
        <Grid
          textAlign="center"
          style={{ height: "100vh" }}
          verticalAlign="middle"
        >
          <Grid.Column style={{ maxWidth: 450 }}>
            <Header size="huge"> UPLOAD A FILE </Header>
            {this.state.success ? <SuccessMessage /> : null}
            {this.state.error ? <ErrorMessage /> : null}
            <input
              onChange={this.handleChange}
              ref={(ref) => {
                this.uploadInput = ref;
              }}
              type="file"
<<<<<<< HEAD
            />{" "}
            <br />
            <div style={{ padding: 20 }}>
=======
            />
            <br />
            <div style={{ padding: 15 }}>
>>>>>>> 2ddebeb5a50959810ea4d21fa973444175f964e7
              <Button primary onClick={this.handleUpload}>
                Upload{" "}
              </Button>
            </div>
          </Grid.Column>
        </Grid>
      </div>
    );
  }
}

export default Uploader;
