class Anagram
  def initialize(string1, string2)
    @string1 = string1
    @string2 = string2
  end

  def is_anagram
    output = ''
    sort_string1 = @string1.chars.sort
    sort_string2 = @string2.chars.sort
    if sort_string1 == sort_string2
      output = 'These words are anagrams'
    else
      output = 'These words are not anagrams'
    end
    output
  end
end