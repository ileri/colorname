require 'color'
require 'colorname/version'
require 'colorname/pre'
require 'colorname/base'
require 'colorname/find'
require 'colorname/find_by_image'
require 'colorname/list'
require 'miro'

##
# Colorname Module
#
# This module helps you to find the closest named color's name.
#
# The closest color is finding by calculating percent error formula between
# your given color and named color list's every element's Red, Green and Blue
# values.
# Logically:
# many named colors = better pair
module Colorname
end
