numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

Thread.new do
  numbers.map! { |n| n + 1 }
end

Thread.new do
  numbers.each do |n|
    puts n
  end
end

sleep(1)