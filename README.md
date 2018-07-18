<h3 align="center">jekyll-info</h3>

<p align="center">
  A plugin to provide information about your Jekyll site's configuration. <a href="https://stevenwestmoreland.com/jekyll-info.html">Example</a>.
</p>

<p align="center">
  <a href="https://badge.fury.io/rb/jekyll-info">
    <img src="https://badge.fury.io/rb/jekyll-info.svg" alt="Gem version badge">
  </a>
</p>

## Installation

Add this line to your site's Gemfile:

```ruby
gem 'jekyll-info'
```

And then add this line to your site's `_config.yml`:

```yml
plugins:
  - jekyll-info
```

Run `bundle install` to install the gem.

## Usage

Run `bundle exec jekyll build` to build your site. Navigate to `/jekyll-info.html` to view your Jekyll site's configuration.

### Configuration

Specify a non-default path via your site’s config. *(Default: jekyll-info.html)*

```yml
info:
  path: site/config.html
```

Allow when in production environment. *(Default: false)*

```yml
info:
  production: true
```

### Updating

Run `bundle update jekyll-info` to update to the latest available version of the gem.
