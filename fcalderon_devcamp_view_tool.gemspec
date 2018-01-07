
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fcalderon_devcamp_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "fcalderon_devcamp_view_tool"
  spec.version       = FcalderonDevcampViewTool::VERSION
  spec.authors       = ["fcalderon"]
  spec.email         = ["fcalderon@nearsoft.com"]

  spec.summary       = %q{Views specific methods for apps I use.}
  spec.description   = %q{Provide HTML generators such as copyright.}
  spec.homepage      = "No url provided"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
