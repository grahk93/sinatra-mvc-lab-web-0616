class Piglatinizer 
  attr_accessor :phrase
  def initialize(phrase)
    @phrase = phrase
  end
  def piglatinize
    vowels = %w{a e i o u}
    consonants = %w{b c d f g h j k l m n p q r s t v w x y z}
    ending = "ay"
    self.phrase.split(' ').map do |word| 
      if vowels.include?(word[0])
           word + ending
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
          word[2..-1] + word[0..1] + ending
      elsif consonants.include?(word[0])
          word[1..-1] + word[0] + ending
      end
    end.join(' ')
  end
end