import React, {Component} from 'react';
import {Container} from 'semantic-ui-react';
import "@google/model-viewer/dist/model-viewer";

class ModelViewer extends Component {

  constructor(props){
    super(props);
    this.state = {width:"70%",height:"50em",imageSrc:"https://meshworks.s3.amazonaws.com/glb-files/out.glb"};
  }

  render() {
    const {customWidth,customHeight,customImage} = this.props;
    return (
        <Container>
          <model-viewer
              src={customImage || this.state.imageSrc}
              shadow-intensity="1"
              style={{width: customWidth || this.state.width, height: customHeight || this.state.height}}
              auto-rotate
              camera-controls
            ></model-viewer>
        </Container>
    )
  }
}

export default ModelViewer;
