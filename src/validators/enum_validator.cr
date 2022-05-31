class EnumValidator
  getter datatype : String
  getter allowable_values : Array(String | Int32 | Float64)

  def initialize(datatype, allowable_values)
    @datatype = datatype
    @allowable_values = allowable_values.map do |value|
      case datatype.to_s
      when /Integer/i
        value.to_i
      when /Float/i
        value.to_f
      else
        value
      end
    end
  end

  def valid?(value)
    value.nil? || allowable_values.includes?(value)
  end
end
