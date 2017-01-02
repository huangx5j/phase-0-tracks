# Guesing word game with two players
class GuessLetter
  attr_accessor :display, :letters, :count, :end, :guesses_left
  attr_accessor :word
  
  # Starting user interface with information on guessing game
  def initialize
    puts "Welcome to the guessing game!"
    puts "Player 1 please enter a word that Player 2 will guess at!"
    puts "Player 2 will have a guess total of double the length of the word Player 1 chooses."
    @word = gets.chomp.downcase
    @count = 0
    @end = false
    @guesses_left = (@word.length)*2
    @previous_guesses = []
  end
  
  # Create a display with blanks and spaces
  def setup
    @display = []
 
    for i in 0...@word.length
      if @word[i] == " "
        @display << " "
      else
        @display << "_"
      end
    end
    
    @letters = @word.length
    @left = letters
    @display = @display.join
  end
  
  #prints out the display with with information on guesses.
  def nextdisplay
    puts @display
    puts "#{@letters}" + " letters in length"
    puts "#{count} guesses made and #{@guesses_left} guesses left"
    puts "#{@left} letters left\n\n"
  end
  
  # Add letter in display if letter is in word
  def guess(letter)
    letter.downcase!
    if !@previous_guesses.include?(letter)
      @count += 1
      @guesses_left -= 1
      for i in 0...@word.length
        if @word[i] == letter
          @display[i] = letter
          @left -= 1
        end
      end
    end
    @previous_guesses << letter
    

    if @left == 0 || @guesses_left == 0
      @end = true
    else
      false
    end
    nextdisplay
  end
end

game = GuessLetter.new
game.setup
game.nextdisplay

until game.end
  puts "Player 2 please guess a letter?"
  game.guess(gets.chomp)
end

if game.guesses_left > 0
  puts "Congrats! You succeeded in #{game.count} guess(es)."
else
  puts "Out of guesses! Better luck next time."
end