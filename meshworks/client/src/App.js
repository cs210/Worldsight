import React, { Component } from 'react';
import {BrowserRouter as Router, Route, Switch} from 'react-router-dom'
import {Container} from 'semantic-ui-react'

import 'semantic-ui-less/semantic.less'
import Feed from './components/Feed';
import Navigator from './components/Navigator';
import Tester from './components/Tester';
import Uploader from './components/Uploader';
import ThemingLayout from './components/ThemingLayout';

class App extends Component {

  render() {
    return (
      <Router>
        <Navigator />
        <Container style={{ marginTop: '7em' }}>
          <Route exact path='/' component={Feed} />
          <Route path='/tests' component={Tester} />
          <Route path='/theming' component={ThemingLayout} />
          <Route path='/upload' component={Uploader} />
        </Container>
      </Router>
    );
  }
}

export default App;
