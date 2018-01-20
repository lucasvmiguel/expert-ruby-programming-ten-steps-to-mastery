puts "New ruby console!"
puts "Enter 'q' to quit"

input = ""

while(input != "q")
  input = gets().chomp()
  if input != "q"
    value = eval(input)
    puts "=> #{value}"
  end
end