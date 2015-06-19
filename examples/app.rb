require 'json'
require 'omniauth'
require 'omniauth_reddit'
require 'sinatra/base'

#TODO(aj-michael) Remove these before commiting.
ENV['GOOGLE_KEY'] = '244561989904-l2rghqd2chsnejqohtkai6aig70m16ql.apps.googleusercontent.com'
ENV['GOOGLE_SECRET'] = 'dEQczF1nUr9aub__QLhsD9-0'

# TODO(aj-michael) Document this.
class App < Sinatra::Base
  get '/' do
    <<-HTML
    <ul>
      <li><a href='/auth/google_oauth2'>Sign in with Google</a></li>
    </ul>
    HTML
  end

  get '/auth/:provider/callback' do
    content_type 'text/plain'
    request.env['omniauth.auth'].to_hash.inspect rescue 'No data'
  end

  get '/auth/failure' do
    content_type 'text/plain'
    request.env['omniauth.auth'].to_hash.inspect rescue 'No data'
  end

  use Rack::Session::Cookie, secret: ENV['RACK_COOKIE_SECRET']

  use OmniAuth::Builder do
    provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {}
  end

  run!
end
