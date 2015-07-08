# coding: utf-8

Gem::Specification.new do |s|
  s.name          = 'palindromes'
  s.version       = File.read 'VERSION'
  s.authors       = %w'mmoghadas'
  s.email         = %w'mike.moghadas@gmail.com'
  s.description   = %q{palindromes: diag tool}
  s.summary       = %q{palindromes: diag tool}
  s.homepage      = ''
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = %w'lib'

  s.add_dependency 'clamp'
  s.add_dependency 'gruff'
end
