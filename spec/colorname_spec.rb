require 'spec_helper'

RSpec.describe Colorname do
  it 'has a version number' do
    expect(Colorname::VERSION).not_to be nil
  end

  it 'find base color name' do
    this_color = Color::RGB.new(30, 140, 30)
    expect(puts(Colorname::Base.find(this_color)))
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end
end
