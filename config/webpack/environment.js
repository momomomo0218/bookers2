const { environment } = require('@rails/webpacker')

module.exports = environment


const webpack = require('webpack')
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: 'popper.js'
  })
)





// const { environment } = require('@rails/webpacker');
// const webpack = require('webpack');

// // ProvidePluginの設定
// environment.plugins.prepend(
//   'Provide',
//   new webpack.ProvidePlugin({
//     $: 'jquery/src/jquery',
//     jQuery: 'jquery/src/jquery',
//     Popper: 'popper.js'
//   })
// );

// // SCSSのローダー設定追加
// environment.loaders.append('sass', {
//   test: /\.scss$/,
//   use: [
//     'style-loader',
//     'css-loader',
//     'sass-loader'
//   ]
// });

// module.exports = environment;
