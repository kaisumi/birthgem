# frozen_string_literal: true

RSpec.describe Birthgem do
  it 'has a version number' do
    expect(Birthgem::VERSION).not_to be nil
  end

  it 'outputs a birthstone with string' do
    expect(Birthgem.stone('2022-1-18')).to eq %w[Garnet]
  end

  it 'outputs a birthstone with number' do
    expect(Birthgem.stone(10)).to eq %w[Opal Tourmaline]
  end

  it 'outputs a birthstone with date' do
    birthday = Date.new(1993, 2, 24)
    expect(Birthgem.stone(birthday)).to eq %w[Amethyst]
  end

  it 'outputs a birthstone in Date' do
    expect(Date.new(1989, 7, 27).birthgem).to eq %w[Ruby]
  end
end
