# frozen_string_literal: true

RSpec.describe Birthgem do
  it 'has a version number' do
    expect(Birthgem::VERSION).not_to be nil
  end

  it 'outputs a birthstone' do
    expect(Birthgem.stone('2022-1-18')).to eq %w[Garnet]
  end
end
