# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'audited-timeline'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.authors       = ['Raffael Schmid']
  spec.email         = ['raffael.schmid@nine.ch']
  spec.summary       = %q{Frontent to audited}
  spec.homepage      = 'https://github.com/ninech/audited-timeline'
  spec.license       = 'MIT'
  spec.description   = 'audited-timeline provides timeline frontend to audited'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'

  spec.add_runtime_dependency 'audited', '>= 4.2.0', '< 5.0.0'
  spec.add_runtime_dependency 'rails', '>= 4.0.0', '< 5.0.0'
  spec.add_runtime_dependency 'draper', '>= 2.1.0', '< 3.0.0'
end
