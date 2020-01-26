require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build :user }

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
