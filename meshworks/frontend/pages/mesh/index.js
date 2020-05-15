import React, {Component} from 'react';
import dynamic from 'next/dynamic';
import {Container, Grid, Header} from 'semantic-ui-react';

const DynamicModelViewer = dynamic(
  () => import('../../components/ModelViewer.js'),
  { ssr: false }
)

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
              <DynamicModelViewer />
            </Container>
          </Grid.Column>
        </Grid.Row>
      </Grid>

    )
  }
}

export default MeshPage;
