# frozen_string_literal: true

module JekyllInfo
  class Generator < Jekyll::Generator
    safe true
    priority :lowest

    # Main plugin action, called by Jekyll-core
    def generate(site)
      @site = site
      return if file_exists?(template_path)
      @site.pages << content_for_file(template_path, template_source_path)
    end

    private

    # Matches all whitespace that follows
    #   1. A '>', which closes an XML tag or
    #   2. A '}', which closes a Liquid tag
    # We will strip all of this whitespace to minify the template
    MINIFY_REGEX = %r!(?<=>|})\s+!

    # Path to jekyll-info from config, or jekyll-info.html for default
    def template_path
      if @site.config["info"] && @site.config["info"]["path"]
        @site.config["info"]["path"]
      else
        "jekyll-info.html"
      end
    end

    # Path to jekyll-info.html template file
    def template_source_path
      File.expand_path "jekyll-info.html", __dir__
    end

    # Checks if a file already exists in the site source
    def file_exists?(file_path)
      if @site.respond_to?(:in_source_dir)
        File.exist? @site.in_source_dir(file_path)
      else
        File.exist? Jekyll.sanitized_path(@site.source, file_path)
      end
    end

    # Generates contents for a file
    def content_for_file(file_path, file_source_path)
      file = PageWithoutAFile.new(@site, __dir__, "", file_path)
      file.content = File.read(file_source_path).gsub(MINIFY_REGEX, "")
      file.data["layout"] = nil
      file.data["sitemap"] = false
      file.output
      file
    end
  end
end
