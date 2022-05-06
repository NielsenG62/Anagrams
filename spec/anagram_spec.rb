require('pry')
require('rspec')
require('anagram')

describe('#is_anagram') do 
  it('should know if two words are anagrams') do
    string = Anagram.new('now', 'won')
    expect(string.is_anagram).to(eq('These words are anagrams'))
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
  it('should check sentences for antigrams') do
    string = Anagram.new('Clint Eastwood', 'old west action')
    expect(string.is_anagram).to(eq("These words are anagrams"))
  end
  it('should not allow the same word or phrase twice') do
    string = Anagram.new('bark', 'bark')
    expect(string.is_anagram).to(eq("Please put two different strings"))
  end
end

describe('#letter_match') do
  it('should get a breakdown of letters in the word') do
    string = Anagram.new('hill', 'leek')
    expect(string.letter_match).to(eq("H:4, I:1, L:2"))
  end
end