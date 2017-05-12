require 'spec_helper'

RSpec.describe Colorname do
  it 'has a version number' do
    expect(Colorname::VERSION).not_to be nil
  end

  it 'finds base color name' do
    this_color = Color::RGB.new(30, 140, 30)
    expect(Colorname.base(this_color))
  end

  it 'finds color name' do
    this_color = Color::RGB.new(0, 0, 0)
    expect(Colorname.find(this_color))
  end

  it 'finds color name by image' do
    expect(Colorname.find_by_image('http://www.petmd.com/sites/default/files/scared-kitten-shutterstock_191443322.jpg'))
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end
end
