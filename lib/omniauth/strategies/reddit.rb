require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    # TODO(aj-michael) Document this.
    class Reddit < OmniAuth::Strategies::OAuth2
      BASE_SCOPE_URL = 'https://www.reddit.com/api/v1/authorize'

      option :client_options, { site: 'https://reddit.com',
                                authorize_url: '/api/v1/authorize',
                                token_url: 'api/v1/access_token' }

      uid do
        puts 'Inside of uid'
      end

      info do
        puts 'Inside of info'
      end

      extra do
        puts 'Inside of extra'
      end

    end
  end
end
