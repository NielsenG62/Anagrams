#!/usr/bin/ruby

require_relative('lib/anagram.rb')

puts 'Anagram Checker:'
puts 'Please enter your first word or sentence'
input1 = gets.chomp
puts 'Please enter your second word or sentence'
input2 = gets.chomp
check = Anagram.new(input1, input2)
puts check.is_anagram()
