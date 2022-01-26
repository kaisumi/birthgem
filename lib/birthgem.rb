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
    12 => ['Blue Topaz', 'Tanzanite', 'Blue Zircon']
  }.freeze

  ##
  # Outputs the birthstone(s) of the month for the date in the argument.
  def self.stone(date)
    key =
      if date.instance_of?(Integer)
        date
      elsif date.instance_of?(String)
        parsed_date = Date.parse(date)
        parsed_date.month
      elsif date.instance_of?(Date)
        date.month
      end
    STONE_BY_MONTH[key] unless key.nil?
  end
end

class Date
  # Outputs the birthstone in Date class.
  def birthgem
    Birthgem::STONE_BY_MONTH[month]
  end
end
