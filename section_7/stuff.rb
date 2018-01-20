module Magic
  attr_accessor :power
  TRICK = ";)"

  def spell
    "powww"
  end

  def self.spell
    "plattt"
  end
end

class Shield
  include Magic
  attr_accessor :value

  def defense
    "tunnn"
  end
end

class Weapon
  attr_accessor :value

  def attack
    "tunnn"
  end
end