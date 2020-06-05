class Lexicon
  def self.scan(user_input)
    directions = ['north', 'south', 'east', 'west']
    verbs = ['go', 'kill', 'eat']

    print_directions = []
    print_verbs = []

    split_input = user_input.split
      split_input.each { |word|
        if directions.include?(word)
          print_directions.push(['direction', word])
        end
        if verbs.include?(word)
          print_verbs.push(['verb', word])
        end
      }
      if print_directions.empty? 
        print_verbs
      else
        print_directions
      end
  end
end