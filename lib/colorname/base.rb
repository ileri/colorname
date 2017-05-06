# Color Name Finder method
module Colorname
  class << self 
    def base(*cc)
      base_color make_color *cc
    end
  
    private
    def base_color(cc)
      if cc.red == cc.green && cc.green == cc.blue
        # XXX Should add grey?
        cc.red < 127 ? :black : :white
      elsif cc.red == cc.green && cc.red > cc.blue
        [:red, :green]
      elsif cc.red == cc.blue && cc.red > cc.green
        [:red, :blue]
      elsif cc.green == cc.blue && cc.green > cc.red
        [:green, :blue]
      else
        case [cc.red, cc.green, cc.blue].each_with_index.max[1]
        when 0
          [:red]
        when 1
          [:green]
        when 2
          [:blue]
        end
      end
    end
  end
end
