class EnumValidator
  getter name : String
  getter datatype : String
  getter allowable_values : Set(String | Int32 | Int64 | Float32 | Float64)
  getter error_message : String

  def initialize(name, datatype, allowable_values)
    @name = name
    @datatype = datatype
    @error_message = "invalid value for \"#{name}\", must be one of #{allowable_values.to_a}."
    @allowable_values = allowable_values.map do |value|
      case datatype.to_s
      when /Int64/i
        value.to_i64
      when /Int32/i
        value.to_i
      when /Float32/i
        value.to_f32
      when /Float64/i
        value.to_f64
      else
        value
      end
    end.to_set
  end

  def valid?(value, allow_nil = true)
    return true if allow_nil && value.nil?

    !value.nil? && allowable_values.includes?(value.not_nil!)
  end

  def valid!(value, allow_nil = true)
    raise ArgumentError.new(error_message) unless valid?(value, allow_nil)
  end

  def all_valid?(values, allow_nil = true)
    return true if allow_nil && values.nil?

    !values.nil? && values.not_nil!.all? { |value| allowable_values.includes?(value) }
  end

  def all_valid!(values, allow_nil = true)
    raise ArgumentError.new(error_message) unless all_valid?(values, allow_nil)
  end
end
