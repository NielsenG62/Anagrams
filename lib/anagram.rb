class Anagram
  def initialize(string1, string2)
    @string1 = string1
    @string2 = string2
  end

  def is_anagram
    output = ''
    sort_string1 = @string1.downcase.chars.sort
    sort_string2 = @string2.downcase.chars.sort
    if ((@string1.count 'aeiou') > 0) && ((@string2.count 'aeiou') > 0)
      if sort_string1 == sort_string2
        output = 'These words are anagrams'
      else
        output = 'These words are not anagrams'
      end
    else
      output = "Invalid input. Words must contain vowels."
    end
    output
  end
end
