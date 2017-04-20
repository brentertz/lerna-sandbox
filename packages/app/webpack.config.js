const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  entry: './index.js',
  output: {
    filename: 'index.js',
    path: path.resolve('dist')
  },
  devServer: {
    contentBase: path.resolve('dist'),
    compress: true,
    host: '0.0.0.0'
  },
  plugins:[
    new HtmlWebpackPlugin()
  ]
};
