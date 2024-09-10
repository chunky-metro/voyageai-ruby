# frozen_string_literal: true

require_relative "lib/voyageai/version"

Gem::Specification.new do |s|
  s.name = "voyageai-ruby"
  s.version = VoyageAI::VERSION
  s.authors = ["Matt Culpepper"]
  s.email = ["Matt Culpepper"]
  s.homepage = "https://github.com/mculp/voyageai-ruby"
  s.summary = "Voyage AI embeddings"
  s.description = "Voyage AI API Wrapper"

  s.metadata = {
    "bug_tracker_uri" => "https://github.com/mculp/voyageai-ruby/issues",
    "changelog_uri" => "https://github.com/mculp/voyageai-ruby/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://github.com/mculp/voyageai-ruby",
    "homepage_uri" => "https://github.com/mculp/voyageai-ruby",
    "source_code_uri" => "https://github.com/mculp/voyageai-ruby"
  }

  s.license = "MIT"

  s.files = Dir.glob("lib/**/*") + Dir.glob("bin/**/*") + %w[README.md LICENSE.txt CHANGELOG.md]
  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 2.7"

  s.add_runtime_dependency "http", "~> 5.0"

  s.add_development_dependency "bundler", ">= 1.15"
  s.add_development_dependency "combustion", ">= 1.1"
  s.add_development_dependency "rake", ">= 13.0"
  s.add_development_dependency "rspec", ">= 3.9"
end
