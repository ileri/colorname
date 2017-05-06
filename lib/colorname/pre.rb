# Color Name Finder method
module Colorname
  class << self
    private
    def make_color(*cc)
      case cc.size
      when 1
        if cc.first.is_a? Color
          cc.first
        elsif cc.first.is_a? String
          Color::RGB.by_hex(cc.first)
        else
          $stderr.puts 'Invalid color code input'
        end
      when 3
        Color::RGB.new(*cc)
      else
        $stderr.puts 'Wrong number of arguments' 
      end
    end
  end
end
