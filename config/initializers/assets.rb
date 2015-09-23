# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
 Rails.application.config.assets.precompile += %w( demo.css )
 Rails.application.config.assets.precompile += %w( demo-print.css )
 Rails.application.config.assets.precompile += %w( raphael_2.0.2.js )
 Rails.application.config.assets.precompile += %w( world_1000.js )
 Rails.application.config.assets.precompile += %w( menubar.js )
 Rails.application.config.assets.precompile += %w( info.css )
