require "rails_helper"

class EmailValidatorSpec
  include ActiveModel::Validations
  attr_accessor :email
  validates :email, presence: true, email: true, length: { maximum: 255 }
end

RSpec.describe EmailValidator do
  subject { EmailValidatorSpec.new }

  context "when the email is valid" do
    let(:email) { "valid_email@example.com" }

    it "should be valid" do
      subject.email = email
      expect(subject).to be_valid
    end
  end

  context "when the email is invalid" do
    let(:invalid_email) { "is not a valid email address" }

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it "is not valid with an invalid email without domain" do
      subject.email = invalid_email
      expect(subject).to_not be_valid
    end

    it "is not valid with an invalid email without address" do
      subject.email = "@haredx.com"
      expect(subject).to_not be_valid
    end

    it "is not valid with an invalid email with special characters" do
      subject.email = "$special_email@$harefx.com"
      expect(subject).to_not be_valid
    end

    it "is not valid with an email that is longer 255 characters" do
      subject.email = "#{'a' * 246}@faker.com"
      expect(subject).to_not be_valid
    end
  end
end