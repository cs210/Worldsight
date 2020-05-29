import React, {Component} from 'react';
import {Grid, Input, Dropdown, Header} from 'semantic-ui-react';

class ItemInput extends Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      name: "",
      tags: []
    }
  }

  updateName = (e) => {
    this.setState({
      name: e.target.value
    });
    this.updateAllInfo();
  }

  updateEmail = (e) => {
    this.setState({
      email: e.target.value
    });
    this.updateAllInfo();
  }

  updateTags = (event, data) => {
    let newTag = {key: data.value, text: data.value, value: data.value};
    this.setState(prevState => ({
      tags: [...prevState.tags, newTag]
    }));
    this.updateAllInfo();
  }

  updateAllInfo = () => {
    this.props.handleItemInfoChange(this.state.email, this.state.name, this.state.tags);
  }

  render() {
    let {email, name, tags} = this.state;
    return (
      <div>
      <Grid textAlign="left" style={{ paddingLeft: '2%'}}>
        <Grid.Column style={{width: '30%'}} style={{ paddingRight: '100%'}}>
          <Input label={{ content: 'Email' }} labelPosition='left' placeholder='Your email here' onChange={this.updateEmail}/>
        </Grid.Column>
        <Grid.Column style={{width: '30%'}} style={{ paddingRight: '100%'}}>
            <Input label={{ content: 'Mesh Name' }} labelPosition='left' placeholder='Enter item name' onChange={this.updateName}/>
        </Grid.Column>
        <Grid.Column style={{width: '60%'}}>
          <Header as='h3'> Relevant tags: </Header>
          <Dropdown
            fluid
            clearable
            search
            selection
            multiple
            allowAdditions
            onAddItem={this.updateTags}
            options={this.state.tags}
          />
        </Grid.Column>
      </Grid>
      </div>
    )
  }

}

export default ItemInput
