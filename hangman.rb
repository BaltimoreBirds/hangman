#!/usr/bin/env ruby

puts "Lets play Hangman!"

@word_bank=['cowboys', 'indians', 'cops', 'robbers', 'water', 'bottle', 'table', 'desk', 'chair',
          'notebook', 'window', 'computer', 'coffee', 'music','tooldbar', 'mouse', 'pad', 'duct',
          'wires', 'countdown','wall', 'outlet', 'refrigerator', 'presentation', 'lightning', 'office', 'locker', 'paper',
          'stack', 'ruby', 'shelf', 'terrorist', 'freedom', 'patriot', 'ventilation', 'microwave', 'dispenser', 'trash',
          'television', 'spoon', 'fork', 'knife', 'toaster', 'stand' 'walker', 'runner' 'zebra', 'chess', 'king', 'queen',
          'pencil', 'marker','cleaner', 'ergonomic' 'switch' 'flag', 'terminal', 'back' , 'chest', 'plant', 'flower', 'kaboom',
          'bomb', 'building', 'car', 'plane', 'train' 'automobile', 'bark', 'catdog', 'pillar', 'support', 'beers']

            ## @word_bank.sample   will return a random word from the array.
random_num=rand(@word_bank.length)
@winning_word= @word_bank[random_num] #THIS WORKS

@winning_array=@winning_word.chars.to_a

@num_of_guesses= (@winning_word.length*1.5).round






puts "Your word has been selected"
puts''
puts"To win, guess the word, by typing the word."
puts''
puts"You may also guess letters one at a time."
puts''
puts"You have #{@num_of_guesses} @guesses. Guessing wrong will cost you"
puts"Guessing the same letter twice will cost you"
puts""



def valid_guess(guess, already_guessed)

    if already_guessed.include?(guess)
      @num_of_guesses -= 1
      puts"You already guessed that! Try again"
      puts"You have #{@num_of_guesses} guesses left"
      false
    else
      true
    end

end

@guesses=[]      #stores @guesses

@empty_word_display='_' * @winning_word.length  # displays unguessed letters as blanks
@word_so_far=@empty_word_display                #for adding letters as guessed appropriatly





while true

  if @num_of_guesses <= 0
      puts"YOU'RE OUT OF guesses! OH GAHHHHHHHHHHHHHHHHHHHHHHDDD!"
      puts"You LOSE"
      puts"The word was #{@winning_word}!"
      exit
  end

  puts"This is the word so far:   #{@word_so_far}  . Guess a single letter (a-z) or the entire word:"
  puts ''
  guess=gets.chomp
  puts''

  if valid_guess(guess, @guesses) && @num_of_guesses != 0        #validates a guess

    index_of_GoodGuess = @winning_word.rindex(guess) #THIS WORKS

    if guess == @winning_word
      puts"~~~~~~~~~~~~You win!~~~~~~~~~~~~~~~~~~"
      exit

    elsif index_of_GoodGuess == nil
      puts "SORRY! That is not a letter in this word."
      @guesses.push(guess)
      @num_of_guesses -= 1
      puts "You have #{@num_of_guesses} @guesses remaining"
      puts ""

    elsif guess == @winning_word[index_of_GoodGuess]
      puts 'The word has that letter!'
      puts''
      @guesses.push(guess)


      i=0
      @winning_array.each do |letter|

        if letter == guess
          @word_so_far.insert(i, guess).slice!(i + 1)
        end
        i=i+1
      end

      if @word_so_far == @winning_word
      puts"~~~~~~~~~~~~~~~~~YOU WIN!~~~~~~~~~~~~~~~~~"
      exit


      end


    elsif @word_so_far == @winning_word
      puts"~~~~~~~~~~~~~~~~~YOU WIN!~~~~~~~~~~~~~~~~~"
      exit


    end
  end
end




