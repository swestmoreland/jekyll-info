<h3 align="center">jekyll-info</h3>

<p align="center">
  A plugin to provide information about your Jekyll site's configuration. <a href="https://stevenwestmoreland.com/jekyll-info.html">Example</a>.
</p>

<p align="center">
  <a href="https://badge.fury.io/rb/jekyll-info">
    <img src="https://badge.fury.io/rb/jekyll-info.svg" alt="Gem version badge">
  </a>
</p>

<p align="center">
  <a href="https://stevenwestmoreland.com/jekyll-info.html">
    <img src="https://stevenwestmoreland.com/img/jekyll-info-page-screenshot.png" width="720">
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

## Usage

The plugin will automatically generate a page at `/jekyll-info.html`.

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
