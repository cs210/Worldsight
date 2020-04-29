import React, { Component } from 'react';
import {BrowserRouter as Router, Route} from 'react-router-dom'
import 'semantic-ui-less/semantic.less'

import Navigator from './components/Navigator';
import Tester from './components/Tester';
import Uploader from './components/Uploader';
import ThemingLayout from './components/ThemingLayout';

class App extends Component {
  
  render() {
    return (
      <Router>
        <Route path='/' exact component={Navigator} />
        <Route path='/tests' component={Tester} />
        <Route path='/theming' component={ThemingLayout} />
        <Route path='/upload' component={Uploader} />
      </Router>
    );
  }
}

export default App;
