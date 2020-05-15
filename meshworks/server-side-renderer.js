import React from 'react'
import ReactDOMServer from 'react-dom/server'
import {StaticRouter} from 'react-router';

//import main App component
import App from './client/src/App.js'

const path = require("path");
const fs = require("fs");

export default (req, res, next) =>{

  // point to the html file created by create-react-app's build
  const filePath = path.resolve(__dirname, 'client', 'build', 'index.html')
  fs.readFile(filePath, 'utf8', (err, htmlData) => {
    if (err) {
      console.error('err', err);
      return res.status(404).end()
    }

    // render the app as a string
    const html = ReactDOMServer.renderToString(
      <StaticRouter location={req.baseUrl}>
        <App />
      </StaticRouter>
    );

    // inject the rendered app into our html and send it
    return res.send(
      htmlData.replace(
        '<div id="root"></div>',
        `<div id="root">${html}</div>`
      )
    );
  });

};
