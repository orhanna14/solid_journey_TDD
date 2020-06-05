class Lexicon
  def self.scan(user_input)
    directions = ['north', 'south', 'east', 'west']
    #verbs = ['go', 'kill', 'eat']
    print_directions = []
    split_input = user_input.split
      split_input.each { |direction|
        if directions.include?(direction)
        print_directions.push(['direction', direction])
        end
      }
    print_directions

  end
end