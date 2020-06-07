import React, {Component} from 'react';

import {Grid, Container, Header} from 'semantic-ui-react';

class About extends Component {

  render() {
    let textStyle = {fontSize: '1.1em'};
    return (
      <Container style = {{marginLeft: '30vw', marginRight: '30vw'}}>
        <Header as='h1' style={{verticalAlign: 'top', marginTop: '2.5em'}}> About Meshworks </Header>
        <Container style={textStyle}>
          <div> Meshworks was created by five stanford students. </div>
          <div> We strive to make the 3D capture of real-world assets effortless and accessible to anyone, anywhere. </div>
        </Container>
        <Header as='h1' style={{verticalAlign: 'top', marginTop: '2.5em'}}> How To Use </Header>
        <Container style={textStyle}>
          <div> Upon uploading your photos, you will receive an email noting that your item has been received by the server. </div>
          <div> Our server then automatically begins the conversion process. Unlike other conversion services, </div>
          <div> photogrammetry is a GPU-intensive operation, requiring several minutes to complete. </div>
          <div> When the conversion to a 3D mesh is complete, you will receive another email with a link to your converted mesh.</div>
        </Container>
      </Container>
    )
  }
}

export default About;
