#!/usr/bin/env ruby

puts "Lets play Hangman!"

word_bank=['cowboys', 'indians', 'cops', 'robbers', 'water', 'bottle', 'table', 'desk', 'chair',
          'notebook', 'window', 'computer', 'coffee', 'music','tooldbar', 'mouse', 'pad', 'duct',
          'wires', 'countdown','wall', 'outlet', 'refrigerator', 'presentation', 'lightning', 'office', 'locker', 'paper',
          'stack', 'ruby', 'shelf', 'terrorist', 'freedom', 'patriot', 'ventilation', 'microwave', 'dispenser', 'trash',
          'television', 'spoon', 'fork', 'knife', 'toaster', 'stand' 'walker', 'runner' 'zebra', 'chess', 'king', 'queen',
          'pencil', 'marker','cleaner', 'ergonomic' 'switch' 'flag', 'terminal', 'back' , 'chest', 'plant', 'flower', 'kaboom',
          'bomb', 'building', 'car', 'plane', 'train' 'automobile', 'bark', 'catdog', 'pillar', 'support', 'beers']

            ## word_bank.sample   will return a random word from the array.
random_num=rand(69)
winning_word= word_bank[random_num] #THIS WORKS
edit_winner= winning_word

winning_word='robber'

winning_array=winning_word.chars.to_a

num_of_guesses= winning_word.length*1.5






puts "Your word has been selected"
puts''
puts"To win, guess the word, by typing the word."
puts''
puts"You may also guess letters one at a time."
puts''
puts" You have #{num_of_guesses} guesses. Guessing wrong will cost you"
puts"Guessing the same letter twice will cost you"
puts""



def valid_guess(guess, already_guessed, num_of_guesses)

  while true
    if already_guessed.rindex(guess) != nil
      num_of_guesses = ((num_of_guesses)-1)
      puts"You already guessed that! Try again"
      puts "You have #{num_of_guesses} guesses left"
      guess=gets.chomp
    else
      break
    end
  end


end


guesses=[]      #stores guesses

empty_word_display='_' * winning_word.length  # displays unguessed letters as blanks
word_so_far=empty_word_display                #for adding letters as guessed appropriatly





while true

  puts"This is the word so far:   #{word_so_far}  . Guess a single letter (a-z) or the entire word:"
  guess=gets.chomp

  valid_guess(guess, guesses, num_of_guesses)         #validates a guess

  index_of_GoodGuess = winning_word.rindex(guess) #THIS WORKS

  if guess == winning_word
    puts"~~~~~~~~~~~~You win!~~~~~~~~~~~~~~~~~~"
    exit

  elsif index_of_GoodGuess == nil
  puts "SORRY! "
  guesses.push(guess)
  num_of_guesses=num_of_guesses-1

  elsif guess == winning_word[index_of_GoodGuess]
    puts 'The word has that letter!'
    puts''
    guesses.push(guess)


    i=0
    winning_array.each do |letter|

      if letter == guess
        word_so_far.insert(i, guess).slice!(i + 1)
      end
      i=i+1
    end

  end

  if word_so_far == winning_word
    puts"~~~~~~~~~~~~~~~~~YOU WIN!~~~~~~~~~~~~~~~~~"
    exit
  end

  puts"This is the word so far:   #{word_so_far}  . Guess a single letter (a-z) or the entire word:"
  guess=gets.chomp
end




