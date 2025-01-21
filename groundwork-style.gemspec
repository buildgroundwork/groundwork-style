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
  spec.required_ruby_version = Gem::Requirement.new(">= 3.1")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  #
  # There's no concurrency issue here.
  # rubocop:disable ThreadSafety/DirChdir
  spec.files = Dir.chdir(File.expand_path(__dir__)) { `git ls-files -z`.split("\x0") }
  # rubocop:enable ThreadSafety/DirChdir
  spec.require_paths = ["lib"]

  # rubocop 1.16.1 has a bug: https://github.com/rubocop/rubocop/issues/9861
  spec.add_dependency("rubocop", "~> 1.70.0")
  spec.add_dependency("rubocop-performance", "~> 1.23.0")
  spec.add_dependency("rubocop-rails", "~> 2.29.0")
  spec.add_dependency("rubocop-rake", "~> 0.6.0")
  spec.add_dependency("rubocop-rspec", "~> 3.3.0")
  spec.add_dependency("rubocop-rspec_rails", "~> 2.30.0")
  spec.add_dependency("rubocop-thread_safety", "~> 0.6.0")

  spec.metadata = { "rubygems_mfa_required" => "true" }
end

