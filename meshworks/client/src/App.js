import React, { Component } from 'react';
import axios from 'axios';
import Navigator from './components/Navigator';

class App extends Component {

  render() {
    return (
      <div className="App">
        <Navigator />
      </div>
    );
  }
}

export default App;
