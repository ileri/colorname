# Color Name Finder method
module Colorname
  class << self  
    def find(*cc)
      decide_color make_color *cc
    end

    private
    def decide_color(cc)
      VALUES.select{|_, val| val == [cc.red, cc.green, cc.blue]}.keys
    end
  end
end
