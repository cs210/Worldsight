import React from 'react'
import DropzoneS3Uploader from 'react-dropzone-s3-uploader';
require('dotenv').config();

const dropstyles = {
    width: "300px",
    height: "200px",
    border: "1px dotted white",
    "background-color": "black"
}

class UploadDropzone extends React.Component {

  handleFinishedUpload(info) {
    console.log('File uploaded with filename', info.filename)
    console.log('Access it on s3 at', info.fileUrl)
    this.props.dispatch({type: 'SET_CURRENT_IMAGE', payload:info.fileUrl});
  }

  render() {
    const uploadOptions = {
      server: 'http://localhost:5000',
    }
    const s3_url = process.env.AWS_URL

    const innerDropElement = (
        <div className="inner-drop">
          <p>Drop files here</p>
        </div>
      )

      return (
        <DropzoneS3Uploader
            children={innerDropElement}
            onFinish={this.handleFinishedUpload}
            s3Url={s3_url}
            style={dropstyles}
            maxSize={1024 * 1024 * 5}
            upload={uploadOptions}
        />
      )
  }
}

export default UploadDropzone;