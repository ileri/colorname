require 'spec_helper'

RSpec.describe Colorname do
  it 'has a version number' do
    expect(Colorname::VERSION).not_to be nil
  end

  it 'can find Dominant color' do
    this_color = Color::RGB.new(30, 140, 30)
    expect(puts(Colorname::Dominant.find(this_color)))
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end
end
