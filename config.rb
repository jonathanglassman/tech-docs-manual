require 'govuk_tech_docs'

GovukTechDocs.configure(self)

helpers do
  def template_configuration_options
    gem_location = Bundler.rubygems.find_name('govuk_tech_docs').first.full_gem_path
    raw_markdown = File.read(gem_location + "/docs/configuration.md")

    # Strip the h1 header
    markdown = raw_markdown.lines[1..-1].join

    # Convert the h2 headers to h3
    markdown.gsub!('##', '####')

    markdown
  end
end
