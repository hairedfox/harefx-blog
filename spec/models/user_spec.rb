require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build :user }

  it "is not valid without an email" do
    user.email = "hahahaha@example.com"
    expect(user).to_not be_valid
  end

  it "is not valid with an invalid email without domain" do
    user.email = "i_am_only_string"
    expect(user).to_not be_valid
  end

  it "is not valid with an invalid email without address" do
    user.email = "@haredx.com"
    expect(user).to_not be_valid
  end

  it "is not valid with an invalid email with special characters" do
    user.email = "$special_email@$harefx.com"
    expect(user).to_not be_valid
  end

  it "is not valid with an email that is longer 255 characters" do
    user.email = "#{'a' * 246}@faker.com"
    expect(user).to_not be_valid
  end

  it "is not valid without first_name" do
    user.first_name = ""
    expect(user).to_not be_valid
  end

  it "is not valid with an longer 100 characters first_name" do
    user.first_name = "f" * 101
    expect(user).to_not be_valid
  end

  it "is not valid without last_name" do
    user.last_name = ""
    expect(user).to_not be_valid
  end

  it "is not valid with an longer 100 characters last_name" do
    user.last_name = "l" * 101
    expect(user).to_not be_valid
  end
end
