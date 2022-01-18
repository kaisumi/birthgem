# frozen_string_literal: true

require_relative 'birthgem/version'
require 'date'

##
# This module lets you know the birstone(s) for an entered birthday.

module Birthgem
  ##
  # The birthstones are selected according to [International Gem Society](https://www.gemsociety.org/article/birthstone-chart/).

  STONE_BY_MONTH = {
    1 => %w[Garnet],
    2 => %w[Amethyst],
    3 => %w[Aquamarine],
    4 => %w[Diamond],
    5 => %w[Emerald],
    6 => %w[Pearl Alexandrite],
    7 => %w[Ruby],
    8 => %w[Peridot],
    9 => %w[Sapphire],
    10 => %w[Opal Tourmaline],
    11 => %w[Citrine],
    12 => %w[Blue Topaz Tanzanite Blue Zircon]
  }.freeze

  ##
  # Outputs the birthstone(s) of the month for the date in the argument.
  def self.stone(date)
    parsed_date = Date.parse(date)
    STONE_BY_MONTH[parsed_date.month]
  end
end
