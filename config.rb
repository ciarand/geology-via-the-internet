# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
    activate :livereload
end

after_configuration do
    @bower_config = JSON.parse(IO.read %(#{root}/.bowerrc))
    sprockets.append_path File.join root, @bower_config['directory']
end

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

# Build-specific configuration
configure :build do
    activate :minify_css
    activate :minify_javascript
    activate :asset_hash
    activate :relative_assets
end
