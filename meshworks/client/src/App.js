import React, { Component } from 'react';
import {BrowserRouter as Router, Route} from 'react-router-dom'
import {Container} from 'semantic-ui-react'

import 'semantic-ui-less/semantic.less'
import Feed from './components/Feed';
import Navigator from './components/Navigator';
import Tester from './components/Tester';
import UploadPage from './components/UploadPage';
import ThemingLayout from './components/ThemingLayout';
import MeshPage from './components/MeshPage';


class App extends Component {

  render() {
    return (
      <Router>
        <Navigator />
        <Container style={{ marginTop: '7em' }}>
          <Route exact path='/' component={Feed} />
          <Route path='/tests' component={Tester} />
          <Route path='/theming' component={ThemingLayout} />
          <Route path='/upload' component={UploadPage} />
          <Route path='/mesh' component={MeshPage} />
        </Container>
      </Router>
    );
  }
}

export default App;
