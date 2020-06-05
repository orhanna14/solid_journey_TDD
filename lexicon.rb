class Lexicon
  def self.initialize
    directions = []
  end

  def self.scan(direction)
    directions = []
    direction_array = direction.split
    direction_array.each { |direction|
      directions.push(['direction', direction])
    }
    directions
  end
end