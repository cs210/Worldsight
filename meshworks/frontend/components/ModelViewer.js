import React, {Component} from 'react';
import {Container} from 'semantic-ui-react';
import "@google/model-viewer/dist/model-viewer";
import {Header} from 'semantic-ui-react';

class ModelViewer extends Component {

  constructor(props){
    super(props);
    this.state = {yourName:"",name:"",width:"70%",height:"50em",imageSrc:"https://meshworks.s3.amazonaws.com/glb-files/out.glb"};
  }

  render() {
    const {customWidth,customHeight,customImage,customName,customYourName} = this.props;
    return (
        <Container>
        <Header as='h3'> {this.state.name || customName} </Header>
        <Header as='h5'> {"By: " + (this.state.yourName || customYourName)} </Header>
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
