require 'rubygems'
require 'rake'
require 'echoe'
require 'spec'
require 'cucumber'
require 'lib/mortgage_calc'

require 'cucumber/rake/task'
require 'spec/rake/spectask'

Echoe.new("mortgage_calculations", MortgageCalc::VERSION) do |p|
  p.description = "Utilities for Mortgage related calculations (APR and Monthly Payments)"
  p.url = "http://www.pathf.com/blogs/2010/02/mortcalc-gem/"
  p.author = "Perry Hertler"
  p.email = "perry@hertler.org"
  p.ignore_pattern = ["tmp/*", "script/*, .idea/*"]
  p.development_dependencies = ["rspec >=1.3.1"]
end

Dir["#File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
spec_files = Rake::FileList["spec/**/*_spec.rb"]

desc "Run specs"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = spec_files
  t.spec_opts = ["-c"]
end

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format progress"
end

task :default => [:spec, :features]
