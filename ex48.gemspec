# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ex48"
  spec.version       = '1.0'
  spec.authors       = ["Olivia McGoffin"]
  spec.email         = ["oliviamcgoffin@gmail.com"]
  spec.summary       = %q{Handles user input smoothly}
  spec.description   = %q{Converts user input to something a game can work with reliably.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/ex48.rb']
  spec.executables   = ['bin/ex48']
  spec.test_files    = ['tests/test_ex48.rb']
  spec.require_paths = ["lib"]
end