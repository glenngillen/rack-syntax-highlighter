# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rack-syntax-highlighter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Glenn Gillen"]
  gem.email         = ["me@glenngillen.com"]
  gem.description   = %q{Uses Albino and Pygmentize to add highlighting to code blocks}
  gem.summary       = %q{Rack middleware to add syntax highlighting to code blocks}
  gem.homepage      = "https://github.com/glenngillen/rack-syntax-highlighter"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rack-syntax-highlighter"
  gem.require_paths = ["lib"]
  gem.version       = Rack::Syntax::Highlighter::VERSION

  gem.add_dependency 'rack-plastic', '~> 0.1.3'
  gem.add_dependency 'albino', '~> 1.3.3'
  gem.add_dependency 'pygmentize', '~> 0.0.3'
end
