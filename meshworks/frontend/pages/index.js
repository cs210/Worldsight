import React, { Component } from "react";
import {Container,Grid,Image,Header} from 'semantic-ui-react'
import dynamic from 'next/dynamic';
const DynamicModelViewer = dynamic(
  () => import('../components/ModelViewer.js'),
  { ssr: false }
)

class Feed extends Component {

  render() {
    return (
    <Container style={{ marginTop: '7em' }}>
    	<Header as='h1'> Mesh Feed </Header>
     	<Grid columns={3}>
		    <Grid.Row>
		      <Grid.Column>
		        <DynamicModelViewer customWidth="50%" customHeight="20em" customImage="https://meshworks.s3.amazonaws.com/glb-files/out.glb"/>
		      </Grid.Column>
		      <Grid.Column>
		        <DynamicModelViewer customWidth="50%" customHeight="20em" customImage="https://meshworks.s3.amazonaws.com/glb-files/out.glb"/>
		      </Grid.Column>
		      <Grid.Column>
		        <DynamicModelViewer customWidth="50%" customHeight="20em" customImage="https://meshworks.s3.amazonaws.com/glb-files/out.glb"/>
		      </Grid.Column>
		    </Grid.Row>

		    <Grid.Row>
		      <Grid.Column>
		        <DynamicModelViewer customWidth="50%" customHeight="20em" customImage="https://meshworks.s3.amazonaws.com/glb-files/out.glb"/>
		      </Grid.Column>
		      <Grid.Column>
		        <DynamicModelViewer customWidth="50%" customHeight="20em" customImage="https://meshworks.s3.amazonaws.com/glb-files/out.glb"/>
		      </Grid.Column>
		      <Grid.Column>
		        <DynamicModelViewer customWidth="50%" customHeight="20em" customImage="https://meshworks.s3.amazonaws.com/glb-files/out.glb"/>
		      </Grid.Column>
		    </Grid.Row>
  		</Grid>
    </Container>
    )
  }
}

export default Feed;
