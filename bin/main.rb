#!/usr/bin/env ruby
puts "Enter the player 1 name:"
player1 = gets.chomp
puts  "Enter the player 2 name:"
player2 = gets.chomp

puts "#{player1} will play with X and #{player2} will play with O"
puts "Let start!"
gameover = false;
pl1_choise=[]
pl2_choise=[]
while !gameover do
    puts "+---+---+---+ \n| 1 | 2 | 3 | \n+---+---+---+ \n| 4 | 5 | 6 | \n+---+---+---+ \n| 7 | 8 | 9 | \n+---+---+---+ "
    
    puts "It's #{player1} turn"
    puts "Please select an available cell on the board"
    pl1_choise.push(gets.chomp)
    
    puts "It's #{player2} turn"
    puts "Please select an available cell on the board"
    pl2_choise.push(gets.chomp)
    
    puts "Player  #{player1} win!"

    gameover = true

end