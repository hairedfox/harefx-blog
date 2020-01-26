module Types
  class AuthProviderEmailInput < BaseInputObject
    graphql_name "AUTH_PROVIDER_EMAIL"

    argument :email, String, required: true
    argument :password, String, required: true
    argument :password_confirmation, String, required: true
  end
end