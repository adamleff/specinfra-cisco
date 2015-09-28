# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "specinfra-cisco"
  spec.version       = "2.40.2"
  spec.authors       = ["Gosuke Miyashita", "Carl Perry"]
  spec.email         = ["gosukenator@gmail.com", "partnereng@chef.io"]
  spec.description   = %q{Common layer for serverspec and itamae patched for Cisco platforms}
  spec.summary       = %q{Common layer for serverspec and itamae patched for Cisco platforms}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.files.delete('wercker.yml')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "net-scp"
  spec.add_runtime_dependency "net-ssh", "~> 2.7"
  spec.add_runtime_dependency "net-telnet"
  spec.add_runtime_dependency "sfl"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.1.1"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-its"
end
