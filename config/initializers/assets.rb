Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w(application.css application.js bootstrap.min.js popper.js)
# Rails.application.config.assets.unknown_asset_fallback = true
