module Types
  class DateType < Types::BaseScalar
    def self.coerce_input(value, _context)
      Time.zone.parse(value)
    end

    def self.coerce_result(value, _context)
      value.utc.iso8601.to_date
    end
  end
end