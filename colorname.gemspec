# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'colorname/version'

Gem::Specification.new do |spec|
  spec.name          = 'colorname'
  spec.version       = Colorname::VERSION
  spec.authors       = ['celilileri','ozeno']
  spec.email         = ['celil.ileri@bil.omu.edu.tr']

  spec.summary       = 'A Color Categorizator and Namer Ruby Gem'
  spec.homepage      = 'https://github.com/celilileri/colorname'
  spec.license       = 'MIT'


  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end << 'lib/colorname/find_by_image'
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'color', '~> 1.8'
  spec.add_dependency 'miro', '~> 0.4.0'
  
  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
