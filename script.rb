#!/usr/bin/ruby
require_relative('lib/anagram.rb')

puts 'Anagram Checker:'
puts 'Please enter your first word or sentence'
input1 = gets.chomp
puts 'Please enter your second word or sentence'
input2 = gets.chomp
check = Anagram.new(input1, input2)
output = check.is_anagram

if output.include? 'These words are not anagrams'
  puts <<-'HEREDOC'
    .-"-.
  _/.-.-.\_
 ( ( o o ) )
  |/  "  \|
   \ .-. /
   /`"""`\
  /       \
  HEREDOC

elsif output == 'Invalid input. Words must contain vowels.'
  puts <<-'HEREDOC'
   ,-.       _,---._ __  / \
  /  )    .-'       `./ /   \
 (  (   ,'            `/    /|
  \  `-"             \'\   / |
   `.              ,  \ \ /  |
    /`.          ,'-`----Y   |
   (            ;        |   '
   |  ,-.    ,-'         |  /
   |  | (   |            | /
   )  |  \  `.___________|/
   `--'   `--'
  HEREDOC
elsif output == 'Please put two different strings'
  puts <<-'HEREDOC'
        __  _
    .-.'  `; `-._  __  _
   (_,         .-:'  `; `-._
 ,'o"(        (_,           )
(__,-'      ,'o"(            )>
   (       (__,-'            )
    `-'._.--._(             )
       |||  |||`-'._.--._.-'
                  |||  |||  

  HEREDOC
elsif output == 'No letters in these words match, making them antigrams'
  puts <<-'HEREDOC'
               |       :     . |
             | '  :      '   |
             |  .  |   '  |  |
   .--._ _...:.._ _.--. ,  ' |
  (  ,  `        `  ,  )   . |
   '-/              \-'  |   |
     |  o   /\   o  |       :|
     \     _\/_     / :  '   |
     /'._   ^^   _.;___      |
   /`    `""""""`      `\=   |
 /`                     /=  .|
;             '--,-----'=    |
|                 `\  |    . |
\                   \___ :   |
/'.                     `\=  |
\_/`--......_            /=  |
            |`-.        /= : |
            | : `-.__ /` .   |
            |    .   ` |    '|
            |  .  : `   . |  |
  HEREDOC

else
  puts <<-'HEREDOC'
        .
      ":"
    ___:____     |"\/"|
  ,'        `.    \  /
  |  O        \___/  |
~^~^~^~^~^~^~^~^~^~^~^~^~
  HEREDOC
end
puts check.letter_match
puts output