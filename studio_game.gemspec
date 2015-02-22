Gem::Specification.new do |s|
  s.name         = "studio_game"
  s.version      = "1.0"
  s.author       = "Jennifer Cullen"
  s.email        = "teacher.cullen@gmail.com"
  s.homepage     = "https://github.com/jenncullen"
  s.summary      = "This is a game for Larry, Harry, and Moe"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.licenses     = ['MIT']

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'studio_game' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end
