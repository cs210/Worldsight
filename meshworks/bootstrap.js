// Node doesn’t speak JSX, so we need to transpile our code with babel.
// this tells Node how to interpret our client code.
// We’ll actually use this as an entry point.

require ('ignore-styles');

//require('@babel/polyfill')
require('@babel/register')({
  ignore: [/(node_modules)/],
  //ignore: [],
  //include: ['index.js','server-side-renderer.js', /.\/client\/src/],
  presets: ['@babel/preset-env', '@babel/preset-react'],
  plugins: ['@babel/plugin-syntax-dynamic-import',
          '@babel/plugin-transform-modules-commonjs']
});


require('./index');
