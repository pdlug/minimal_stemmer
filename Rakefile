require 'bundler/setup'
require 'rspec/core/rake_task'

require 'yard'
require 'yard/rake/yardoc_task'

task :clean do
  rm_rf 'doc'
  rm_rf 'pkg'
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '-fd --color'
end

YARD::Rake::YardocTask.new do |t|
  t.files = ['lib/**/*.rb']
  t.stats_options = ['--list-undoc']
end

task default: :spec

require 'rubygems/package_task'

gemspec = Gem::Specification.load 'minimal_stemmer.gemspec'

Gem::PackageTask.new(gemspec) do |pkg|
end
