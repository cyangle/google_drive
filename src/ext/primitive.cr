require "big"

struct Bool
  def self.new(value : String) : Bool
    value == "true"
  end

  macro static_array(*strings)
    %array = uninitialized StaticArray({{@type}}, {{strings.size}})
    {% for string, i in strings %}
      %array.to_unsafe[{{i}}] = {{@type}}.new({{string}})
    {% end %}
    %array
  end
end

class String
  macro static_array(*strings)
    %array = uninitialized StaticArray({{@type}}, {{strings.size}})
    {% for string, i in strings %}
      %array.to_unsafe[{{i}}] = {{string}}
    {% end %}
    %array
  end

  {% for type in [8, 16, 32, 64, 128] %}
    def to_i{{type}}! : Int{{type}}
      to_i{{type}}
    end

    def to_u{{type}}! : UInt{{type}}
      to_u{{type}}
    end
  {% end %}

  def to_f64!
    to_f64
  end

  def to_f32!
    to_f32
  end
end

struct BigDecimal < Number
  def self.new(value : JSON::PullParser) : BigDecimal
    BigDecimal.new(value.read_string)
  end

  def to_json(json : JSON::Builder) : Nil
    json.string(to_s)
  end
end
