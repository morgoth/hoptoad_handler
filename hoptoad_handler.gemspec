# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hoptoad_handler"

Gem::Specification.new do |s|
  s.name        = "hoptoad_handler"
  s.version     = HoptoadHandler::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Adam Jacob", "Wojciech Wnętrzak"]
  s.email       = ["w.wnetrzak@gmail.com"]
  s.homepage    = "https://github.com/morgoth/hoptoad_handler"
  s.summary     = %q{Chef handler for sending exceptions to Hoptoad}
  s.description = %q{Chef handler for sending exceptions to Hoptoad}

  s.rubyforge_project = "hoptoad_handler"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("chef", ">= 0.9.0")
  s.add_dependency("toadhopper", ">= 1.3.0")

  s.add_development_dependency("mocha")

  s.post_install_message = %q{
  ========================================================================
  WARNING
  ------------------------------------------------------------------------
  This gem was renamed to airbrake_handler, due to service name change.
  New gem can be found at: https://rubygems.org/gems/airbrake_handler
  Repository: https://github.com/morgoth/airbrake_handler

  This gem will no longer be supported.
  ========================================================================
  }
end
