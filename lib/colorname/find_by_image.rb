# Find dominant colors in an image
module Colorname
  class << self
    def find_by_image(image)
      # find_by_image ( image path or url )
      #
      # This function help you to find the most dominant colors' names in
      # given image.
      #
      # You can give a path or url as arguement.
      colors = Miro::DominantColors.new(image)
      color_names = []

      colors.to_rgb.each do |color|
        color_names << find(*color)
      end

      color_names
    end
  alias findbyimage find_by_image
  end
end
