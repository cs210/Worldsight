import React, {Component} from 'react';
import {Grid, Input, Dropdown, Header, Container} from 'semantic-ui-react';

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
      <Container style={{marginTop: '5em', marginBottom: '5em'}}>
        <Container style={{ marginBottom: '2vh'}}>
            <Header as='h3'> What will the mesh be called? </Header>
            <Input placeholder='Mesh name' onChange={this.updateName}/>
        </Container>
        <Container style={{ marginBottom: '5vh'}}>
          <Header as='h3'> Where should we reach you? </Header>
          <Input labelPosition='left' placeholder='Your email here' onChange={this.updateEmail}/>
        </Container>
        <Container>
          <Header as='h3'> Finally, tag it: </Header>
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
        </Container>
      </Container>
    )
  }

}

export default ItemInput
