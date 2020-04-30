import React, {Component} from 'react';
import "@google/model-viewer";

import {Container } from 'semantic-ui-react';

class MeshPage extends Component {

  render() {
    return (
      <Container>
        <model-viewer
            src="shared-assets/models/cube.glb"
            alt="A 3D model of an astronaut"
            auto-rotate
            camera-controls
          ></model-viewer>
      </Container>
    )
  }
}

export default MeshPage;
