def receive_answers
  
  life1 = 3
  life2 = 3
  
  while life1 != 0 && life2 != 0

    value1 = generate_random_number
    value2 = generate_random_number
    value3 = generate_random_number
    value4 = generate_random_number
    puts "Player1: What does #{value1} plus #{value2} equal?" 
    answer1 = gets.chomp.to_i

    puts "Player2: What does #{value3} plus #{value4} equal?"
    answer2 = gets.chomp.to_i

    game_answer = value1 + value2
    game_answer2 = value3 + value4
    
    if answer1 != game_answer
      life1 -= 1
    end

    if answer2 != game_answer2
      life2 -= 1
    end
    puts "Your current score is #{life1}:#{life2}"
  end
  puts "Game over, man. Game over."
end


def generate_random_number
  rand(1..20)
end

receive_answers
