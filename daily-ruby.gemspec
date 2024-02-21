# frozen_string_literal: true

require_relative 'lib/daily-ruby/version'

Gem::Specification.new do |spec|
  spec.name          = 'daily-ruby'
  spec.version       = Daily::VERSION
  spec.authors       = ['Daily']
  spec.email         = ['help@daily.co']
  spec.summary       = 'The official library for communicating with the Daily REST API.'
  spec.description   = 'The official library for communicating with the Daily REST API.'
  spec.homepage      = 'https://github.com/daily-co/daily-ruby'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.add_dependency('faraday', '~> 2.9.0')

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.metadata['rubygems_mfa_required'] = 'true'
end