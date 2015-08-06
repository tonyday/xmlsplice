require "xmlsplice/version"

module Xmlsplice
  class Converter
    def parentise(source, s, l)
      source if l == 0
    end
  end
end
