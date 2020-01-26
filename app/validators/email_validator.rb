class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    message = "must be valid, for examle: valid_email@example.com"

    unless Settings.email_pattern.match(value)
      record.errors[attribute] << message
    end
  end
end
