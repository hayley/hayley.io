exports.modifyWebpackConfig = (config, env) ->
  console.log env
  config.loader 'does this name even matter', (cfg) ->
    cfg.test = /\.rb$/
    cfg.loader = 'opal-webpack'
    cfg
  config
