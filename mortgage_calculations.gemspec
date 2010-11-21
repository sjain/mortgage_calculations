# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mortgage_calculations}
  s.version = "0.1.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Perry Hertler"]
  s.date = %q{2010-11-20}
  s.description = %q{Utilities for Mortgage related calculations (APR and Monthly Payments)}
  s.email = %q{perry@hertler.org}
  s.extra_rdoc_files = ["README.rdoc", "lib/mortgage_calc.rb", "lib/mortgage_calc/mortgage_util.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "Version.yml", "features/apr.feature", "features/step_definitions/apr_steps.rb", "features/support/env.rb", "lib/mortgage_calc.rb", "lib/mortgage_calc/mortgage_util.rb", "mortgage_calc.gemspec", "spec/mortgage_calc/mortgage_util_spec.rb", "spec/spec_helper.rb", "mortgage_calculations.gemspec"]
  s.homepage = %q{http://www.pathf.com/blogs/2010/02/mortcalc-gem/}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Mortgage_calculations", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{mortgage_calculations}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Utilities for Mortgage related calculations (APR and Monthly Payments)}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.3.1"])
    else
      s.add_dependency(%q<rspec>, [">= 1.3.1"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.3.1"])
  end
end
