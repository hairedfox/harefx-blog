module Mutations
  class CreateUser < BaseMutation
    class AuthProviderSignUpData < Types::BaseInputObject
      argument :info, Types::AuthProviderEmailInput, required: false
    end

    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :auth_provider, AuthProviderSignUpData, required: false

    field :user, Types::UserType, null: false

    def resolve(first_name: nil, last_name: nil, auth_provider: nil)
      user = User.create!(
        first_name: first_name,
        last_name: last_name,
        email: auth_provider.dig(:info, :email),
        password: auth_provider.dig(:info, :password),
        password_confirmation: auth_provider.dig(:info, :password_confirmation)
      )
      { user: user }
    end
  end
end