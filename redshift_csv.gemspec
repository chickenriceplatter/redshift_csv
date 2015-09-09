# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redshift_csv/version'

Gem::Specification.new do |spec|
  spec.name          = "redshift_csv"
  spec.version       = RedshiftCsv::VERSION
  spec.authors       = ["chickenriceplatter"]
  spec.email         = ["chickenriceplatter@gmail.com"]

  spec.summary       = %q{A tool to enter a query into redshift and export the result into a csv file.}
  spec.description   = %q{Sequel in, csv out.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_runtime_dependency "pg"
end
