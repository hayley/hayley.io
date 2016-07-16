require 'bundler'

Bundler.require

desc "Start webpack"
task :webpack do
  # exec({'OPAL_LOAD_PATH' => Opal.paths.join(':')}, 'webpack-dev-server --progress -d')
  exec({'OPAL_LOAD_PATH' => Opal.paths.join(':')}, 'gatsby develop')
end
