# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'githelp/version'

Gem::Specification.new do |spec|
  spec.name          = "githelp"
  spec.version       = Githelp::VERSION
  spec.authors       = ["Toshiyuki Masui"]
  spec.email         = ["masui@pitecan.com"]

  spec.summary       = %q{GitHelp - long summary}
  spec.description   = %q{GitHelp - short desc}
  spec.homepage      = "http://GitHub.com/masui/GitHelp"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  # spec.executables = ["githelp", "githelp-changed"]
  spec.require_paths = ["lib", "data"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"

  spec.add_dependency "re_expand", "~> 0.1.3"
end
