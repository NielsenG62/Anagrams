class Anagram
  def initialize(string1, string2)
    @string1 = string1
    @string2 = string2
  end

  def is_anagram
    output = ''
    if @string1 == @string2
      output = 'Please put two different strings'
      return output
    end
    sort_string1 = @string1.downcase.chars.sort
    sort_string1.delete_if {|letter| !('a'..'z').include?(letter)}
    sort_string2 = @string2.downcase.chars.sort
    sort_string2.delete_if {|letter| !('a'..'z').include?(letter)}
    if ((@string1.count 'aeiou') > 0) && ((@string2.count 'aeiou') > 0)
      if sort_string1 == sort_string2
        output = 'These words are anagrams'
      else
        if (@string1.count @string2) == 0
          output = 'No letters in these words match, making them antigrams'
        else
          output = 'These words are not anagrams'
        end
      end
    else
      output = "Invalid input. Words must contain vowels."
    end
    output
  end

  def letter_match
    output = ''
    string_array = @string1.upcase.chars
    string_array.each do |letter|
      count = (@string1.upcase.count letter).to_s
      if !output.include? letter
      output += "#{letter}:#{count}, "
      end
    end
    output
  end
end
