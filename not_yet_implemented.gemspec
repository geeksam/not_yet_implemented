
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "not_yet_implemented/version"

Gem::Specification.new do |spec|
  spec.name          = "not_yet_implemented"
  spec.version       = NotYetImplemented::VERSION
  spec.authors       = ["Sam Livingston-Gray", "Kerri Miller"]
  spec.email         = ["geeksam@gmail.com", "kerrizor@kerrizor.com"]

  spec.summary       = %q{Adds a 'NotYetImplemented' exception class.  That's really it.  Inspired by https://twitter.com/kerrizor/status/1151532013188337665}
  spec.homepage      = "https://github.com/geeksam/not_yet_implemented"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
