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
winning_word= word_bank[random_num]
array_of_winner=[make_array winning_word]

def make_array winning_word
  winning_word.each do |letter|
    letter +', '
  end
end

print array_of_winner


#puts "Your word has been selected"
#puts''
#puts"To win, guess the word, by typing the word."
#puts''
#puts"You may also guess letters one at a time."
#puts''
#puts" You have " +num_of_guesses +" guesses"
#puts""

#def num_of_guesses ##word size plus [depends on size of word]??
#end

#right_guesses=[]
#wrong_guesses=[]

#while true

 # puts"So far you've guessed: " +word_so_far +". Guess again"
 # guess=gets.chomp

 # index_of_GoodGuess = winnning_word.rindex(guess)

 # if guess == winning_word
 #   puts"You win!"
 # elsif guess==winning_word(index_of_GoodGuess)
 #   puts 'That is one'
 #   right_guesses.push(guess)
 #   num_of_guesses= num_of_guesses-1
 #   puts
 # end

#end




