require File.expand_path(File.join('..', 'lib', 'omniauth', 'reddit', 'version'), __FILE__)

Gem::Specification.new do |s|
  s.name = 'omniauth_reddit'
  s.version = OmniAuth::Reddit::VERSION
  s.license = 'MIT'
  s.summary = 'OmniAuth OAuth2 strategy for Reddit.com'
  s.description = 'Allows developers to seamless integrate Reddit user ' \
    'authentication into third party applications.'
  s.author = 'Adam Michael'
  s.email = 'adam@ajmichael.net'
  s.homepage = 'http://github.com/aj-michael/omniauth_reddit'
end
