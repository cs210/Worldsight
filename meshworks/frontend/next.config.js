
const path = require('path');
const withLess = require('@zeit/next-less');
const withPlugins = require('next-compose-plugins');

const nextConfig = {
	webpack(config) {
	      config.module.rules.push({
		  test: /\.(png|svg|eot|otf|ttf|woff|woff2)$/,
		  use: {
		    loader: 'url-loader',
		    options: {
		      limit: 8192,
		      publicPath: '/_next/static/',
		      outputPath: 'static/',
		      name: '[name].[ext]',
		    },
		  },
		});
		config.resolve.alias['../../theme.config$'] = path.join(config.context, 'src/semantic-ui/theme.config');
		return config;
	},
};

const plugins = [withLess];
module.exports = withPlugins(plugins, nextConfig);
