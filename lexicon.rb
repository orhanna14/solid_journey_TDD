class Lexicon
  def self.scan(user_input)
    directions = ['north', 'south', 'east', 'west']
    verbs = ['go', 'kill', 'eat']
    stops = ['the', 'in', 'of']
    nouns = ['bear', 'princess']

    print_directions = []
    print_verbs = []
    print_stops = []
    print_nouns = []

    split_input = user_input.split
      split_input.each { |word|
        if directions.include?(word)
          print_directions.push(['direction', word])
        end
        if verbs.include?(word)
          print_verbs.push(['verb', word])
        end
        if stops.include?(word)
          print_stops.push(['stop', word])
        end
        if nouns.include?(word)
          print_nouns.push(['noun', word])
        end
      }
      if !print_directions.empty?
        print_directions
      elsif !print_verbs.empty?
        print_verbs
      elsif !print_stops.empty?
        print_stops
      elsif !print_nouns.empty?
        print_nouns
      end
  end
end