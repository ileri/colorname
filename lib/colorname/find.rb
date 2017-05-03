# Color Name Finder method
module Colorname
  module Find
    # Dominant base color finder
    def self.Dominant(cc)
      if (cc.red == cc.green) && (cc.green == cc.blue)
        # XXX Should add grey?
        cc.red < 127 ? [:Black] : [:White]
      else if cc.red == cc.green
        [:Red, :Green]
      else if cc.red == cc.blue
        [:Red, :Blue]
      else if cc.green == cc.blue
        [:Green, :Blue]
      else
        case [cc.red, cc.green, cc.blue].each_with_index.max[1]
        when 0
          [:Red]
        when 1
          [:Green]
        when 2
          [:Blue]
        end
      end
    end
  end
end
