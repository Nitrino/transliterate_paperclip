# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = 'transliterate_paperclip'
  spec.version       = TransliteratePaperclip::VERSION
  spec.author        = 'Petr Stepchenko'
  spec.email         = ['nitrinodev@gmail.com']
  spec.description   = 'Cyrillic transliteration file names to paperclip'
  spec.summary       = 'Cyrillic transliteration file names to paperclip'
  spec.homepage      = 'https://github.com/Nitrino/transliterate_paperclip'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'russian'
  spec.add_dependency 'stringex'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

end
