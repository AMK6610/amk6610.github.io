source "https://rubygems.org"

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!

# Pins the same gem set GitHub Pages builds this site with, so local output
# matches the deployed site. This gem set needs Ruby 3.1.x: Ruby 3.2 removed
# `Object#tainted?`, which `pathutil` (a Jekyll 3 dependency) still calls.
gem "github-pages", group: :jekyll_plugins

# If you want to use Jekyll native, uncomment the line below.
# To upgrade, run `bundle update`.

# gem "jekyll"

if Gem.win_platform?
  # Windows has no zoneinfo database, and _config.yml sets a `timezone`.
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"

  # Lets --watch use filesystem events instead of polling. Optional: without it
  # Jekyll still rebuilds on save, just more slowly.
  gem "wdm", "~> 0.2"
end

# Ruby 3.4 dropped these from the default gems; Jekyll 3.x still expects them.
if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new("3.4.0")
  gem "base64"
  gem "bigdecimal"
  gem "csv"
  gem "logger"
end

# If you have any plugins, put them here!
group :jekyll_plugins do
  # gem "jekyll-archives"
  gem "jekyll-feed"
  gem "jekyll-sitemap"

  # Ruby 3.0 removed webrick from the standard library.
  gem "webrick", "~> 1.8"
end
