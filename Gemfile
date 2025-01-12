source "https://rubygems.org"

# Use github-pages gem instead of Jekyll directly
gem "github-pages", "~> 228", group: :jekyll_plugins
gem "webrick", "~> 1.8"
gem "minima", "~> 2.5"


# Add other plugins you might need
group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-seo-tag"
  gem "jekyll-sitemap"
end

# Windows and JRuby does not include zoneinfo files
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

