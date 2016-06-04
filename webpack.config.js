const webpack = require('webpack');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  cache: true,
  entry: './src/index.js',
  output: {
    path: __dirname + '/dist/',
    filename: 'bundle.js'
  },
  devtool: 'source-map',
  plugins: [
    new webpack.ProvidePlugin({
      riot: 'riot'
    }),
    new HtmlWebpackPlugin({
      filename: 'index.html',
      mobile: true,
      template: 'template.html'
    })
  ],
  module: {
    preLoaders: [
      {
        test: /\.tag$/,
        loader: 'riotjs-loader'
      }
    ],
    loaders: [
      {
        test: /\.js$|\.tag$/,
        loader: 'babel',
        query: {
          presets: ['es2015']
        }
      },
      {
        test: /\.scss$/,
        loaders: ['style', 'css', 'sass']
      }
    ]
  }
};