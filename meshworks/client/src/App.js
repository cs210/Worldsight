import React, { Component } from 'react';
import axios from 'axios';
import {BrowserRouter as Router, Route} from 'react-router-dom'
import 'semantic-ui-less/semantic.less'

import Navigator from './components/Navigator';
import Tester from './components/Tester';
import Uploader from './components/Uploader';


class App extends Component {

  render() {
    return (
      <Router>
        <Route path='/' exact component={Navigator} />
        <Route path='/tests' component={Tester} />
        <Route path='/upload' component={Uploader} />
      </Router>
    );
  }
}

export default App;
