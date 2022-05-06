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
end