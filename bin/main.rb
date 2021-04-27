#!/usr/bin/env ruby

require "./lib/logic.rb"

puts 'Enter the player 1 name:'
player1 = Player.new(gets.chomp, "X")
puts 'Enter the player 2 name:'
player2 = Player.new(gets.chomp, "O")

puts "#{player1.name} will play with X and #{player2.name} will play with O"
puts 'Let start!'

gaming = Game.new(player1, player2)
gameover = false

until gameover
  puts "+---+---+---+ \n| 1 | 2 | 3 | \n+---+---+---+ \n| 4 | 5 | 6 | \n+---+---+---+ \n| 7 | 8 | 9 | \n+---+---+---+ "

  puts "It's #{player1.name} turn"
  puts 'Please select an available cell on the board'
  begin
    cell = gets.chomp.match(/[1-9]/)[0] 
    gaming.choice_available?(cell.to_i)
  rescue StandardError
    puts 'Enter valid number'
    retry
  else
    gaming.turn(player1,cell.to_i)
    if player1.check_winner
        puts "Player  #{player1.name} win!"
        gameover = true
        next
    end
  end

  puts "It's #{player2.name} turn"
  puts 'Please select an available cell on the board'
  begin
    cell = gets.chomp.match(/[1-9]/)[0]
    gaming.choice_available?(cell.to_i)
  rescue StandardError
    puts 'Enter valid number'
    retry
  else
    gaming.turn(player2,cell.to_i)
    if player2.check_winner
        puts "Player  #{player2.name} win!"
        gameover = true
        next
    end
  end

  

  

end
