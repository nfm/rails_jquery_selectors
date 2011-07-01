# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails_jquery_selectors/version"

Gem::Specification.new do |s|
  s.name        = "rails_jquery_selectors"
  s.version     = Rails::Jquery::Selectors::VERSION
  s.authors     = ["Nicholas Firth-McCoy"]
  s.email       = ["nicholas@2suggestions.com.au"]
  s.homepage    = "https://github.com/2suggestions/rails_jquery_selectors"
  s.summary     = %q{DRY, auto-generated jQuery selectors for your Rails forms}

  s.rubyforge_project = "rails_jquery_selectors"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
