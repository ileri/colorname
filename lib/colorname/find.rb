# Color Name Finder method
module Colorname
  class << self  
    def find(*cc)
      decide make_color *cc
    end

    private
    def decide(cc)
      result = VALUES.select{|_, val| val == [cc.red, cc.green, cc.blue]}.keys
      result.empty? ? (closest(cc)) : result
    end

    def closest(cc)
      puts "En yakın bulunuyor..."
      diff = 100
      similar = :undefined
      VALUES.each do |key, val|
        new_diff = cdiff(cc,val)
        if new_diff < diff
          diff = new_diff
          similar = key
        end
      end
      similar
    end

    def cdiff(real, guess)
      r_diff = ((real.red - guess[0])/real.red).abs/100.0
      g_diff = ((real.green - guess[1])/real.green).abs/100.0
      b_diff = ((real.blue - guess[2])/real.blue).abs/100.0
      r_diff + g_diff + b_diff
    end
  end
end
