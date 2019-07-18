require "not_yet_implemented/version"

class NotYetImplemented < StandardError
  def method_missing(mid)
    raise self.class
  end
end
