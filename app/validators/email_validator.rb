class EmailValidator < ActiveModel::EachValidator
  EMAIL_REGEX = /^[a-z][a-z0-9]{1,}@[a-z][0-9a-z]{1,}.[a-z]{2,}(\.[a-z]{2,})?$/

  def validate_each(record, attribute, value)
    record.errors.add(attribute, "must be valid, for examle: valid_email@example.com") unless attribute.match(EMAIL_REGEX)
  end
end