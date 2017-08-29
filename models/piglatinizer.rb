class PigLatinizer
  attr_accessor :phrase

    def piglatinize(word)
         if word.downcase.start_with?('a','e','i','o','u')
           word + "way"
         else
           while !word.downcase.start_with?('a','e','i','o','u')
            word = word[1..-1] + word[0]
          end
           word + "ay"
          end
        end

        def to_pig_latin(sentence)
         sentence.split(" ").map do |word|
           piglatinize(word)
         end.join(" ")
       end
     end
