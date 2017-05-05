# Color Name Finder method
module Colorname
  # Dominant base color finder
  class Dominant
    class << self
      def base_color(cc)
        if (cc.red == cc.green) && (cc.green == cc.blue)
          # XXX Should add grey?
          cc.red < 127 ? :Black : :White
        elsif (cc.red == cc.green) && cc.red > cc.blue
          [:Red, :Green]
        elsif (cc.red == cc.blue) && cc.red > cc.green
          [:Red, :Blue]
        elsif cc.green == cc.blue && cc.green > cc.red
          [:Green, :Blue]
        else
          case [cc.red, cc.green, cc.blue].each_with_index.max[1]
          when 0
            :Red
          when 1
            :Green
          when 2
            :Blue
          end
        end
      end

      def find(cc, sign = ', ')        
        base = base_color(cc)
        base.is_a?(Array) ? base.join(sign) : base
      end
    end
  end
end
