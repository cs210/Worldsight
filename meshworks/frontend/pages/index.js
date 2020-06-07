import React, { Component } from "react";
import {Container,Grid,Image,Header} from 'semantic-ui-react'
import axios from 'axios';
import dynamic from 'next/dynamic';
import Link from 'next/link';
import InfiniteScroll from "react-infinite-scroll-component";
const DynamicModelViewer = dynamic(
  () => import('../components/ModelViewer.js'),
  { ssr: false }
)

class Feed extends Component {

	constructor(props){
		super(props);
		this.state = {items: [], defaultMesh: "https://meshworks.s3.amazonaws.com/glb-files/out.glb", customWidth:"50%",customHeight:"20em",showItems:6};
		this.handleShowMore = this.handleShowMore.bind(this);
		this.getItems();
	}

	componentDidMount(){
		this.getItems();
	}

	handleShowMore() {
		this.setState({showItems: this.state.showItems + 6 >= this.state.items.length ? this.state.showItems + 1 : this.state.showItems + 6});
  }

	getItems = () => {
	    axios.get('/api/items')
	      .then(res => {
	        if(res.data){
	          // console.log(res.data);
	          this.setState({items: res.data},() =>{
	          	if(this.state.items.length < this.state.showItems){
	     			this.setState({showItems:this.state.items.length-1});
	     		}
	          })
	        }
	      })
	      .catch(err => console.log(err));

	     // console.log("Items length: ",this.state.items.length);
	     // console.log("Show items: ",this.state.showItems);
  	}


	render() {

		let feedDisplay = this.state.items.slice(0,this.state.showItems).map((item,i) => {
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
		    	<Header as='h1'> Recent Uploads </Header>
	     			<InfiniteScroll
			          dataLength={this.state.showItems}
			          next={this.handleShowMore}
			          hasMore={true}
			          loader={<h4>Loading...</h4>}
			        >
			        	<Grid columns={2}>
		    				{feedDisplay}
			    		</Grid>
			    	</InfiniteScroll>

		    </Container>
	    );
	}
}

export default Feed;
