class EmailValidator < ActiveModel::EachValidator
  EMAIL_REGEX = /\A[a-z][a-z0-9.-_]*@[a-z]{2,10}\.[a-z]{2,10}(.[a-z]{2,10})?\Z/.freeze

  def validate_each(record, attribute, value)
    message = "must be valid, for examle: valid_email@example.com"

    unless EMAIL_REGEX.match(value)
      record.errors[attribute] << message
    end
  end
end
