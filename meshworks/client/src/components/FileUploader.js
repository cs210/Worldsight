import React, {Component} from 'react';
import {Container, Grid, Header} from 'semantic-ui-react';
import Dropzone from 'react-dropzone-uploader'


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

const CustomLayout = () => {
  const getUploadParams = () => ({
    url: S3_BUCKET_URL
  })

  const handleSubmit = (files, allFiles) => {
    console.log(files.map(f => f.meta))
    allFiles.forEach(f => f.remove())
  }

  return (
    <Dropzone
      getUploadParams={getUploadParams}
      LayoutComponent={Layout}
      onSubmit={handleSubmit}
      inputContent="Drop Files (Custom Layout)"
    />
  )
}

class FileUploader extends Component {

  render() {
    return (
      <Container>
        <CustomLayout />
      </Container>

    )
  }
}

export default FileUploader;
