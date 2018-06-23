# Jekyll Info plugin

[![Gem Version](https://badge.fury.io/rb/jekyll-info.svg)](https://badge.fury.io/rb/jekyll-info)

A plugin to provide information about your Jekyll site's configuration. <a href="https://stevenwestmoreland.com/jekyll-info.html">Example</a>.

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

Specify a non-default path via your site’s config. *Default: jekyll-info.html*

```yml
info:
  path: site/config.html
```

Allow when in production environment. *Default: false*

```yml
info:
  production: true
```
