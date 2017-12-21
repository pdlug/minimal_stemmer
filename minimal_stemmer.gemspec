Gem::Specification.new do |s|
  s.name        = 'minimal_stemmer'
  s.version     = '0.1.1'
  s.licenses    = ['MIT']

  s.summary     = 'Implementation of an English minimal stemmer'
  s.description = 'Implements the "S-Stemmer" from "How Effective Is '\
                  'Suffixing?"'
  s.authors     = ['Paul Dlug']
  s.email       = 'paul.dlug@gmail.com'
  s.homepage    = 'https://github.com/pdlug/minimal_stemmer'

  s.files       = Dir['lib/**/*.rb']
  s.test_files  = Dir['spec/**/*.rb']

  s.require_path = 'lib'
  s.required_ruby_version = '>= 1.9.3'

  s.add_development_dependency('rake')
  s.add_development_dependency('rspec', '~> 3')
  s.add_development_dependency('yard', '~> 0.9.12')
end
