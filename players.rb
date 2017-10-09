class Players 
  attr_accessor :name, :lives, :score
    def initialize(name, lives, score)
      @name = name
      @lives = lives
      @score = score
    end
  end

  puts 'Welcome to game. Please enter your name'

  player1 = Players.new(gets.chomp, 3, 0)

  puts player1.name

  player2 = Players.new(gets.chomp, 3, 0)