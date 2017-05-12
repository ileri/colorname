# Find dominant colors in an image
module Colorname
  class << self
    def find_by_image(image)
      colors = Miro::DominantColors.new(image)
      color_names = []

      colors.to_rgb.each do |color|
        color_names << find(*color)
      end

      color_names
    end
  end
end
