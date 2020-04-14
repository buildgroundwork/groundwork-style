# frozen_string_literal: true

require_relative "lib/groundwork/style/version"

Gem::Specification.new do |spec|
  spec.name          = "groundwork-style"
  spec.version       = Groundwork::Style::VERSION
  spec.authors       = ["Adam Milligan"]
  spec.email         = ["adam@buildgroundwork.com"]

  spec.summary       = "Style rules for Ruby"
  spec.homepage      = "https://github.com/buildgroundwork/groundwork-style"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) { `git ls-files -z`.split("\x0") }
  spec.require_paths = ["lib"]

  spec.add_dependency("rubocop", "~> 0.81")
  spec.add_dependency("rubocop-i18n", "~> 2.0")
  spec.add_dependency("rubocop-performance", "~> 1.5")
  spec.add_dependency("rubocop-rails", "~> 2.4")
  spec.add_dependency("rubocop-rake", "~> 0.5")
  spec.add_dependency("rubocop-rspec", "~> 1.37")
  spec.add_dependency("rubocop-thread_safety", "~> 0.3")

  spec.add_development_dependency("rake", "~> 13.0")
end

