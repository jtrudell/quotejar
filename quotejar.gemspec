# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quotejar/version'

Gem::Specification.new do |spec|
  spec.name          = "quotejar"
  spec.version       = Quotejar::VERSION
  spec.authors       = ["Jen Trudell"]
  spec.email         = ["jtrudell@gmail.com"]

  spec.summary       = %q{Saves quotes from your kids. Also saves paper.}
  spec.description   = %q{Saves quotes from your kids (or anyone) and includes the age of the kid when quoted.}
  spec.homepage      = "https://github.com/jtrudell/quotejar"
  spec.license       = "MIT"

  spec.files         = ["git ls-files".split($/), "lib/quotejar/age.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end

