require('pry')
require('rspec')
require('coins')

describe('#anagram_check') do 
  it('should know if two words are anagrams') do
    string = Anagram.new('now', 'won')
    expect(string.is_anagram).to(eq('These words are anagrams'))
  end
end