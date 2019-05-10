require_dependency 'omniauth'
require_dependency 'omniauth-auth0'

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

  client_id = ENV.fetch('AUTH0_CLIENT_ID') { raise("AUTH0_CLIENT_ID is not set!") }
  client_secret = ENV.fetch('AUTH0_CLIENT_SECRET') { raise("AUTH0_CLIENT_SECRET is not set!") }
  domain = ENV.fetch('AUTH0_DOMAIN') { raise("AUTH0_DOMAIN si not set!") }
  
  scope = ENV.fetch('AUTH0_SCOPE') { 'openid read:users write:order' }
  audience = ENV.fetch('AUTH0_AUDIENCE') { "#{domain}/api" }

  provider :auth0, client_id, client_secret, domain,
     {
        authorize_params: {
           scope: scope,
           audience: audience
      }
    }
end

