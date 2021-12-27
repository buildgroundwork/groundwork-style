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
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) { `git ls-files -z`.split("\x0") }
  spec.require_paths = ["lib"]

  # rubocop 1.16.1 has a bug: https://github.com/rubocop/rubocop/issues/9861
  spec.add_dependency("rubocop", "~> 1.24")
  spec.add_dependency("rubocop-performance", "~> 1.12")
  spec.add_dependency("rubocop-rails", "~> 2.12", ">= 2.12.4")
  spec.add_dependency("rubocop-rake", "~> 0.6")
  spec.add_dependency("rubocop-rspec", "~> 2.5")
  spec.add_dependency("rubocop-thread_safety", "~> 0.4", ">= 0.4.4")

  spec.add_development_dependency("rake", "~> 13.0.3")
  spec.add_development_dependency("rspec", "~> 3.10")
  spec.metadata = { "rubygems_mfa_required" => "true" }
end

