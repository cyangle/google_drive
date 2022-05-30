# Hard code multipart form boundary, so that the request VCR hash stays the same
module MIME::Multipart
  def self.generate_boundary : String
    "--------------------------aIsvamjjzHDWAhDBa7Leku6kSnaKc8i3qyG8H8BA9sJodcqo"
  end
end

class File < IO::FileDescriptor
  def to_s
    gets_to_end.tap do |_|
      rewind
    end
  end
end
