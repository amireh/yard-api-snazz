Gem::Specification.new do |s|
  s.name        = 'yard-api-snazz'
  s.summary     = "A template plugin for YARD-API for better output style."
  s.version     = '1.0.0'.freeze
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.authors     = ["Ahmad Amireh"]
  s.email       = 'ahmad@instructure.com'
  s.homepage    = 'https://github.com/amireh/yard-api-snazz'
  s.files       = Dir.glob("{config,lib,spec,templates}/**/*") +
                  ['LICENSE', 'README.md', '.rspec', __FILE__]
  s.license     = 'AGPL3'
  s.add_dependency 'yard', '0.8.7'
  s.add_dependency 'yard-api'
end
