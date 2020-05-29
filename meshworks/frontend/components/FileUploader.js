import React, {Component} from 'react';
import {Container} from 'semantic-ui-react';
import Dropzone from 'react-dropzone-uploader'

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
      <Dropzone
          autoUpload = {false}
          onChangeStatus={this.props.onChangeStatus}
          LayoutComponent={Layout}
          SubmitButtonDisabled = {true}
          inputContent="Drop Files Here"
        />
    )
  }
}

export default FileUploader;
