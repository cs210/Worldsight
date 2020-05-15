import React, {Component} from 'react';
import {Container} from 'semantic-ui-react';
import "@google/model-viewer/dist/model-viewer";

class ModelViewer extends Component {

  render() {
    return (
      <Container>
        <model-viewer
            src="https://meshworks.s3.amazonaws.com/glb-files/out.glb"
            shadow-intensity="1"
            style={{width:"70%", height:"50em"}}
            auto-rotate
            camera-controls
          ></model-viewer>
      </Container>
    )
  }
}

export default ModelViewer;
