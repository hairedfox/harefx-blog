class EmailValidator < ActiveModel::EachValidator
  EMAIL_REGEX = /^[a-z][a-z0-9]{1,}@[a-z][0-9a-z]{1,}.[a-z]{2,}(\.[a-z]{2,})?$/.freeze

  def validate_each(record, attribute, _value)
    return unless attribute.match(EMAIL_REGEX)

    message = "must be valid, for examle: valid_email@example.com"
    record.errors.add(attribute, message)
  end
end
