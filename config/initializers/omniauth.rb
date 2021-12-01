Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, Rails.application.credentials.google_oauth2[:app_id], Rails.application.credentials.google_oauth2[:app_secret]
end

# Rails.application.config.middleware.use OmniAuth::Builder do
#     provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
# end

OmniAuth.config.allowed_request_methods = %i[get]