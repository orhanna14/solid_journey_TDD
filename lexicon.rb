class Lexicon
  def self.scan(user_input)
    directions = ['north', 'south', 'east', 'west']
    verbs = ['go', 'kill', 'eat', 'ran', 'run', 'walk', 'take']
    stops = ['the', 'in', 'of', 'to', 'and', 'with', 'at']
    nouns = ['bear', 'princess', 'tree', 'hole', 'door']
    @@sentence = []

    split_input = user_input.downcase.split
      split_input.each { |word|
        if convert_number(word)
          push_to_sentence('number', word.to_i)
        elsif directions.include?(word)
          push_to_sentence('direction', word)
        elsif verbs.include?(word)
          push_to_sentence('verb', word)
        elsif stops.include?(word)
          push_to_sentence('stop', word)
        elsif nouns.include?(word)
          push_to_sentence('noun', word)
        else
          push_to_sentence('error', word)
        end
      }
    @@sentence
  end

  def self.convert_number(object)
    begin
      return Integer(object)
    rescue
      return nil
    end
  end

  def self.push_to_sentence(type, word)
    pair = [type, word]
    @@sentence.push(pair)
  end
end

print Lexicon.scan("Kill the 40 bear and save the princess")