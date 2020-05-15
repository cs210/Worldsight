// Node doesn’t speak JSX, so we need to transpile our code with babel.
// this tells Node how to interpret our client code.
// We’ll actually use this as an entry point.

require ('ignore-styles');
const path = require("path");
const fs = require("fs");

//require('@babel/polyfill')
require('@babel/register')({
  root: __dirname,
  //ignore: [/(node_modules)/],
  ignore: [new RegExp(
          fs
            .readFileSync(path.resolve('./non_ES5_node_modules'), 'utf-8')
            .slice(1, -2)
        )],
  //ignore: [],
  presets: ['@babel/preset-env', '@babel/preset-react'],
  plugins: ['@babel/plugin-syntax-dynamic-import',
          '@babel/plugin-transform-modules-commonjs',
           '@babel/plugin-transform-runtime',
          ]
});


require('./index');
