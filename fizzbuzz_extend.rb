def fizzbuzz(input_num, options)
  output_array = []
  options.each do |word, divisor|
    output_array << word.to_s if input_num % divisor == 0
  end
  if output_array.empty?
    p "No magic can be done to number:"
    p input_num
  else
    puts "\nWelp, you've got youself a:"
    p output_array.join("")
    puts ""
  end
end

def set_options(input_number)
  options = { :fizz => 3, :buzz => 5 }
  words = []
  divisors = []

  until true == false
    puts "\nFirst, the word such as 'sivv' (typing 'done' ends options):"
    word = gets.chomp.to_sym
    break if word == :done
    words << word

    p "Next, what divisible number would result in '#{word}'?"
    divisors << gets.chomp.to_i
  end
  options = Hash[words.zip divisors].merge(options)
  fizzbuzz(input_number, options)
end

puts "\n====================================="
p "Welcome to fizz-buzz, Dr. Octagon."
p "What would you like to zz-ify today?"
puts "====================================="
input_number = gets.chomp.to_i

puts "\nWhat wild word options do you want to add?"
p "by default, there is fizz(3) and buzz(5)"
p "example: 'sivv' when divisible by '7'"
set_options(input_number)
