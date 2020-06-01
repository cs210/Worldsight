import React, { Component } from "react";
import {Container,Grid,Image,Header} from 'semantic-ui-react'
import axios from 'axios';
import dynamic from 'next/dynamic';
import Link from 'next/link';
const DynamicModelViewer = dynamic(
  () => import('../components/ModelViewer.js'),
  { ssr: false }
)

class Feed extends Component {

	constructor(props){
		super(props);
		this.state = {items: [], defaultMesh: "https://meshworks.s3.amazonaws.com/glb-files/out.glb", customWidth:"50%",customHeight:"20em"};
	}

	componentDidMount(){
		this.getItems();
	}

	getItems = () => {
	    axios.get('/api/items')
	      .then(res => {
	        if(res.data){
	          console.log(res.data);
	          this.setState({
	            items: res.data
	          })
	        }
	      })
	      .catch(err => console.log(err))
  	}


	render() {

		let feedDisplay = this.state.items.map((item,i) => {
			const meshUrl = item.meshUrl || this.state.defaultMesh;
			const name = item.name;
			const tagElements = item.tags.map((tag,i) => <Grid.Row> <a key={i} className="ui mini tag label">{tag}</a> </Grid.Row>);
			const id = item._id;
			const address = "/mesh/" + id;

			return(
				<Link href={address}>
					<Grid.Column>
						<DynamicModelViewer customName={name} customWidth="50%" customHeight="20em" customImage={meshUrl}></DynamicModelViewer>
						<Grid.Row>
							{tagElements}
						</Grid.Row>
					</Grid.Column>
				</Link>
			)
		});

		/*console.log("Items printing");
		console.log(this.state.items);*/
	    return (
		    <Container style={{ marginTop: '7em' }}>
		    	<Header as='h1'> Mesh Feed </Header>
			     	<Grid columns={3}>
			     		<Grid.Row>
					    	{feedDisplay}
					    </Grid.Row>
			  		</Grid>
		    </Container>
	    );
	}
}

export default Feed;
