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
end