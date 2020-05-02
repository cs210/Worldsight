import React, {Component} from 'react';
import {Container, Grid, Header} from 'semantic-ui-react';

import FileUploader from './FileUploader'
import Uploader from './Uploader'

class UploadPage extends Component {

  render() {
    return (
      <Container>
        <FileUploader />
        <Uploader />
      </Container>

    )
  }
}

export default UploadPage;
