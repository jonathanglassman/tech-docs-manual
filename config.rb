require 'govuk_tech_docs'

GovukTechDocs.configure(self)

activate :relative_assets
set :relative_links, true

DOCS_LOCATION_IN_GEM = Bundler.rubygems.find_name('govuk_tech_docs').first.full_gem_path + "/docs"

files.watch :source, path: DOCS_LOCATION_IN_GEM

helpers do
  def gem_docs(filename)
    raw_markdown = File.read(DOCS_LOCATION_IN_GEM + "/#{filename}")

    # Strip the h1 header
    markdown = raw_markdown.lines[1..-1].join

    # Convert the h2 headers to h3
    markdown.gsub!('##', '###')

    markdown
  end
end
