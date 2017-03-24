require 'slim'

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

set :frontmatter_extensions, %w(.html .slim)

activate :relative_assets

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
  # Append a hash to asset urls
  activate :cache_buster
  activate :asset_hash
end

# Read secret files
file = File.open(".password", "r")
password = file.read
file.close

file = File.open(".user", "r")
user = file.read
file.close

# Setup middleman deploy
# To deploy the build directory to a remote host via ftp:
activate :deploy do |deploy|
  deploy.method = :ftp
  deploy.host = "ftp.damienroche.fr"
  deploy.path = "/www/"
  deploy.user = user
  deploy.password = password
  deploy.build_before = true # default: false
end
