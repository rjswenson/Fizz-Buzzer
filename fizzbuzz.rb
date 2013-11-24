def fizzbuzz(num)
  output_array = []
  output_array << "fizz" if num % 3 == 0
  output_array << "buzz" if num % 5 == 0
  if output_array.empty?
    p num
  else
    p output_array.join("")
  end
end


p "Welcome to fizz-buzz, Dr. Octagon."
p "What would you like to zz-ify today?"
input_number = gets.chomp.to_i
p "Welp, you've got youself a:"
fizzbuzz(input_number)

