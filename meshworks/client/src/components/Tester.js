import React, {Component} from 'react';

import Todo from './Todo.js';
import EmailSenderTest from './EmailSenderTest.js';

import {Grid } from 'semantic-ui-react';

class Tester extends Component {

  render() {
    return (
      <Grid textAlign='center' style={{ height: '100vh' }} verticalAlign='middle'>
        <Grid.Column style={{ maxWidth: 450 }}>
          <Todo/>
          <EmailSenderTest/>
        </Grid.Column>
      </Grid>
    )
  }
}

export default Tester;
