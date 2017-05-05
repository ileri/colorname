# Color Name Finder method
module Colorname
  class << self  
    def find(cc)
      VALUES.select{|_, val| val == [cc.red, cc.green, cc.blue]}.keys
    end
  end
end
