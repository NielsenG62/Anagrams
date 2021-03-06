require('pry')
require('rspec')
require('anagram')

describe('#is_anagram') do 
  it('should know if two words are anagrams') do
    string = Anagram.new('now', 'won')
    expect(string.is_anagram).to(eq('These words are anagrams'))
  end
  it('should know if two words are not anagrams') do
    string = Anagram.new('bark', 'stark')
    expect(string.is_anagram).to(eq('These words are not anagrams, but these letters match: a, k, r'))
  end
  it('should be not case sensitive') do
    string = Anagram.new('Now', 'Won')
    expect(string.is_anagram).to(eq('These words are anagrams'))
  end
  it('should make sure the words contain a vowel') do
    string = Anagram.new('hjkl', 'lkjh')
    expect(string.is_anagram).to(eq("Invalid input. Words must contain vowels."))
  end
  it('should check strings for antigrams') do
    string = Anagram.new('howdy', 'place')
    expect(string.is_anagram).to(eq("No letters in these words match, making them antigrams"))
  end
  it('should check sentences for anagrams') do
    string = Anagram.new('Clint Eastwood', 'old west action')
    expect(string.is_anagram).to(eq("These words are anagrams"))
  end
  it('should check sentences for antigrams') do
    string = Anagram.new('hi hi hi', 'bye bye')
    expect(string.is_anagram).to(eq("No letters in these words match, making them antigrams"))
  end
  it('should not allow the same word or phrase twice') do
    string = Anagram.new('bark', 'bark')
    expect(string.is_anagram).to(eq("Please put two different strings"))
  end
end

describe('#letter_match') do
  it('should get a breakdown of letters in the both words') do
    string = Anagram.new('hill', 'leek')
    expect(string.letter_match).to(eq("H:1 I:1 L:2 \nE:2 K:1 L:1 "))
  end
end

describe('#is_palindrome?') do
  it('should return false if no word is a palindrome') do
    string = Anagram.new('hill', 'leek')
    expect(string.is_palindrome?).to(eq(false))
  end
  it('should return true if a word is a palindrome') do
    string = Anagram.new('hill', 'hannah')
    expect(string.is_palindrome?).to(eq(true))
  end
end