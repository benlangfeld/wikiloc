# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wikiloc/version"

Gem::Specification.new do |s|
  s.name        = "wikiloc"
  s.version     = Wikiloc::VERSION
  s.authors     = ["Raffi Vartanian"]
  s.email       = ["raffivar@gmail.com"]
  s.homepage    = "https://github.com/raffivar/wikiloc"
  s.summary     = %q{}
  s.description = %q{}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency %q<mechanize>

  s.add_development_dependency %q<bundler>, ["~> 1.0.0"]
  s.add_development_dependency %q<rspec>, [">= 2.7.0"]
  s.add_development_dependency %q<cucumber>
  s.add_development_dependency %q<aruba>
  s.add_development_dependency %q<rake>, [">= 0"]
  s.add_development_dependency %q<guard>, [">= 0.9.0"]
  s.add_development_dependency %q<guard-rspec>, [">= 0"]
  s.add_development_dependency %q<ruby_gntp>, [">= 0"]
  s.add_development_dependency %q<guard-rspec>, [">= 0"]
end
