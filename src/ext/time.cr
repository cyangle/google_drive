module Time::RFC3339Converter
  def self.from_json(value : JSON::PullParser) : Time
    Time::Format::RFC_3339.parse(value.read_string)
  end

  def self.to_json(value : Time, json : JSON::Builder) : Nil
    json.string(Time::Format::RFC_3339.format(value, fraction_digits: 0))
  end
end

module Time::RFC2822Converter
  def self.from_json(value : JSON::PullParser) : Time
    Time::Format::RFC_2822.parse(value.read_string)
  end

  def self.to_json(value : Time, json : JSON::Builder) : Nil
    json.string(Time::Format::RFC_2822.format(value))
  end
end

module Time::ISO8601DateConverter
  def self.from_json(value : JSON::PullParser) : Time
    Time::Format::ISO_8601_DATE.parse(value.read_string)
  end

  def self.to_json(value : Time, json : JSON::Builder) : Nil
    json.string(Time::Format::ISO_8601_DATE.format(value))
  end
end
