require 'spec_helper'

RSpec.describe Colorname do
  it 'has a version number' do
    expect(Colorname::VERSION).not_to be nil
  end

  it 'can find Dominant color' do
    white = Color::RGB.new(255,255,255)
    expect(Colorname::Find.Dominant(white))
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end
end
