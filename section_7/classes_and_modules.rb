require 'thread'
require_relative 'stuff'

class Sword < Weapon
  include Magic

  attr_accessor :price

  def price_correctly
    "#{price},00"
  end
end

s = Sword.new
s.power = 2
s.price = 99
p s.price_correctly
p s.power
p s.spell
p s.attack
p Magic::TRICK
p Magic::spell