# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Zonazero::Application.initialize!

config.assets.precompile += ['ckeditor/init.js']