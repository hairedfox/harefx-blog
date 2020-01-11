FactoryBot.define do
  factory :user do
    email { "#{Faker::Name.last_name.downcase}@fake.com" }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    date_of_birth { "1995-03-29" }
    age { 24 }
    address { "Las Vegas" }
    favorite_quote { "Now or never" }
    status { 1 }
    type { "User" }
    password_digest { "asjdedj210381029312" }
  end
end
