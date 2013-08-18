#!/usr/bin/env ruby

puts "Lets play Hangman!"

word_bank=['cowboys', 'indians', 'cops', 'robbers', 'water', 'bottle', 'table', 'desk', 'chair',
          'notebook', 'window', 'computer', 'coffee', 'music','tooldbar', 'mouse', 'pad', 'duct',
          'wires', 'countdown','wall', 'outlet', 'refrigerator', 'presentation', 'lightning', 'office', 'locker', 'paper',
          'stack', 'ruby', 'shelf', 'terrorist', 'freedom', 'patriot', 'ventilation', 'microwave', 'dispenser', 'trash',
          'television', 'spoon', 'fork', 'knife', 'toaster', 'stand' 'walker', 'runner' 'zebra', 'chess', 'king', 'queen',
          'pencil', 'marker','cleaner', 'ergonomic' 'switch' 'flag', 'terminal', 'back' , 'chest', 'plant', 'flower', 'kaboom',
          'bomb', 'building', 'car', 'plane', 'train' 'automobile', 'bark', 'catdog', 'pillar', 'support', 'beers']


random_num=rand(69)
winning_word= word_bank[random_num] #THIS WORKS
edit_winner= winning_word

puts winning_word='robber'

winning_array=winning_word.chars.to_a








puts "Your word has been selected"
puts''
puts"To win, guess the word, by typing the word."
puts''
puts"You may also guess letters one at a time."
puts''
#puts" You have " +num_of_guesses +" guesses left"
puts""

#def num_of_guesses ##word size plus [depends on size of word]??
#end

#def valid_guess guess
#end

right_guesses=[]      #for guess validation
wrong_guesses=[]      #for guess validation

empty_word_display='_' *winning_word.length  #THIS WORKS, displays unguessed letters as blanks
word_so_far=empty_word_display                #THIS WORKS, for adding letters as guessed appropriatly

#puts word_so_far                               #THIS WORKS

puts"This is your word:   #{word_so_far}  . Now guess:"
guess=gets.chomp

while true



  #valid_guess           #validates a guess

  index_of_GoodGuess = winning_word.rindex(guess) #THIS WORKS

  if guess == winning_word
    puts"You win!"

  elsif index_of_GoodGuess == nil
  puts "SORRY! STRING UP THE NOOSE BOYS, WE GOT A LIVE ONE!"
  wrong_guesses.push(guess)
  #num_of_guesses= num_of_guesses-1

  elsif guess == winning_word[index_of_GoodGuess]
    puts 'The word has that letter!'
    puts''
    right_guesses.push(guess)
    word_so_far.insert(index_of_GoodGuess, guess).slice(index_of_GoodGuess+1)


    i=0
    winning_array.each do |letter|

      if letter == guess
        word_so_far.insert(i, guess).slice(i +1)
      end
      i=i+1
    end





  end


    #num_of_guesses= num_of_guesses-1





  puts"This is the word so far:   #{word_so_far}  . Guess again:"
  guess=gets.chomp

end




