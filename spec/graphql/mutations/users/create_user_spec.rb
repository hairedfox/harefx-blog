require "rails_helper"

module Mutations
  module Users
    RSpec.describe CreateUser, type: :request do
      describe ".resolve" do
        it "creates a new user" do
          expect do
            post "/graphql", params: { query: query }
          end.to change { User.count }.by(1)
        end

        def query
          <<~GQL
            mutation {
              createUser(input: {
                firstName: "Hai",
                lastName: "Tran",
                authProvider: {
                  info: {
                    email: "haits@example.com",
                    password: "samplepass",
                    passwordConfirmation: "samplepass"
                  }
                }
              })
              {
                user {
                  firstName
                  lastName
                }
              }
            }
          GQL
        end
      end
    end
  end
end