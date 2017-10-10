require './players'
require './questions'

class Game
  attr_accessor :turn, :flag
    def initialize()
      @turn = 0
      @flag = true
      
    end
    
    def add_to_turn
      @turn += 1
    end

    def subtract_from_turn
      @turn = 0
    end

    def game_over
      @flag = false
    end
  end

  new_game = Game.new

    puts 'Welcome to the math game. Player 1, please enter your name.'
    player1 = Players.new(gets.chomp)
  
    puts 'Welcome ' + player1.name + '. Player 2, please enter your name.'
  
    player2 = Players.new(gets.chomp)

    puts 'Welcome ' + player2.name + '. Let\'s get started!'

    while new_game.flag == true do

    if new_game.turn == 0 
      puts '--------- NEW TURN ---------'
      new_q = Question.new

      puts "Player 1: What does #{new_q.num1} #{new_q.operator} #{new_q.num2} equal? "
      user_input = gets.chomp.to_i
    

      if (new_q.operator == 'plus')
        answer = (new_q.num1 + new_q.num2)
        if (user_input == answer)
          puts "You got it!"
          new_game.add_to_turn
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        else
          puts "So close! The answer is #{answer}"
          new_game.add_to_turn
          player1.lose_life
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        end
      end
      if (new_q.operator == 'minus')
        answer = (new_q.num1 - new_q.num2)
        if (user_input == answer)
          puts "You got it!"
          new_game.add_to_turn
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        else
          puts "So close! The answer is #{answer}"
          new_game.add_to_turn
          player1.lose_life
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        end
      end
      if (new_q.operator == 'times')
        answer = (new_q.num1 * new_q.num2)
        if (user_input == answer)
          puts "You got it!"
          new_game.add_to_turn
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        else
          puts "So close! The answer is #{answer}"
          new_game.add_to_turn
          player1.lose_life
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        end
      end
      if (new_q.operator == 'divided by')
        answer = (new_q.num1 / new_q.num2)
        if (user_input == answer)
          puts "You got it!"
          new_game.add_to_turn
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        else
          puts "So close! The answer is #{answer}"
          new_game.add_to_turn
          player1.lose_life
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        end
      end
      if (player1.lives < 1)
        puts "--------- GAME OVER ---------"
        puts "Good game! Final score:"
        puts "P1: #{player1.lives} VS P2: #{player2.lives}"
        puts "Player 2 is the winner!"
        new_game.subtract_from_turn
        new_game.game_over
      end
    end

    if new_game.turn == 1 
      puts '--------- NEW TURN ---------'
      new_q = Question.new

      puts "Player 2: What does #{new_q.num1} #{new_q.operator} #{new_q.num2} equal? "
      user_input = gets.chomp.to_i

      if (new_q.operator == 'plus')
        answer = (new_q.num1 + new_q.num2)
        if (user_input == answer)
          puts "You got it!"
          new_game.subtract_from_turn
          puts new_game.turn
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        else
          puts "So close! The answer is #{answer}"
          new_game.subtract_from_turn
          player2.lose_life
          puts new_game.turn
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        end
      end
      if (new_q.operator == 'minus')
        answer = (new_q.num1 - new_q.num2)
        if (user_input == answer)
          puts "You got it!"
          new_game.subtract_from_turn
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        else
          puts "So close! The answer is #{answer}"
          new_game.subtract_from_turn
          player2.lose_life
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        end
      end
      if (new_q.operator == 'times')
        answer = (new_q.num1 * new_q.num2)
        if (user_input == answer)
          puts "You got it!"
          new_game.subtract_from_turn
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        else
          puts "So close! The answer is #{answer}"
          new_game.subtract_from_turn
          player2.lose_life
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        end
      end
      if (new_q.operator == 'divided by')
        answer = (new_q.num1 / new_q.num2)
        if (user_input == answer)
          puts "You got it!"
          new_game.subtract_from_turn
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        else
          puts "So close! The answer is #{answer}"
          new_game.subtract_from_turn
          player2.lose_life
          puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
        end
      end
      if (player1.lives < 1 || player2.lives < 1)
        puts "--------- GAME OVER ---------"
        puts "Good game! Final score:"
        puts "P1: #{player1.lives} VS P2: #{player2.lives}"
        if (player2.lives < 1)
          puts "Player 1 is the winner!"
        else
          puts "Player 2 is the winner!"
        new_game.game_over
        end
      end
    end
  end