import React, {Component} from 'react';
import {Container, Button, Grid, Header} from 'semantic-ui-react';
import Dropzone, {SubmitButton, resolveValue, fileWithMeta} from 'react-dropzone-uploader'


const S3_BUCKET_URL= 'https://meshworks.s3.amazonaws.com/'

const Layout = ({ input, previews, submitButton, dropzoneProps, files, extra: { maxFiles } }) => {

  return (
    <div>
      <div {...dropzoneProps}>
        {previews}
        {files.length < maxFiles && input}
      </div>

      {files.length > 0 && submitButton}
    </div>
  )
}

class FileUploader extends Component{

  render () {
    return(
      <Container>
        <Dropzone
          autoUpload = {false}
          onChangeStatus={this.props.onChangeStatus}
          LayoutComponent={Layout}
          SubmitButtonDisabled = {true}
          inputContent="Drop Files Here"
        />
      </Container>
    )
  }
}

export default FileUploader;
