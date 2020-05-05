import React, {Component} from 'react';
import "@google/model-viewer";

import {Container, Grid, Header} from 'semantic-ui-react';

class MeshPage extends Component {

  render() {
    return (
      <Grid divided='vertically'>
        <Grid.Row columns={2}>
          <Grid.Column textAlign='right'>
            <Header as='h1'> Congratulations, your mesh is ready! </Header>
            <Header as='h2'> Here is your result: </Header>
          </Grid.Column>
          <Grid.Column>
            <Container>
              <model-viewer
                  src="https://meshworks.s3.amazonaws.com/glb-files/out.glb"
                  shadow-intensity="1"
                  style={{width:"70%", height:"50em"}}
                  auto-rotate
                  camera-controls
                ></model-viewer>
            </Container>
          </Grid.Column>
        </Grid.Row>
      </Grid>

    )
  }
}

export default MeshPage;
