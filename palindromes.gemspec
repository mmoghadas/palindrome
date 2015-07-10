# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'palindromes'
  spec.version       = File.read 'VERSION'
  spec.authors       = %w'mmoghadas'
  spec.email         = %w'mike.moghadas@gmail.com'
  spec.description   = %q{palindromes: diag tool}
  spec.summary       = %q{palindromes: diag tool}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w'lib'

  spec.add_dependency 'clamp'
  spec.add_dependency 'gruff'
end
