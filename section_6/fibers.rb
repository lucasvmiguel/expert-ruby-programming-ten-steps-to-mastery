f = Fiber.new do |first_resume|
  puts "first param passed in resume #{first_resume}"
  puts "step 1"
  second_resume = Fiber.yield
  puts "second param passed in resume #{second_resume}"
  puts "step 3"
  third_resume = Fiber.yield
  puts "third param passed in resume #{third_resume}"
  puts "step 5"
  last_resume = Fiber.yield
  puts "last param passed in resume #{last_resume}"
  puts "step 7"
end

puts "step 0"
f.resume(11)
puts "step 2"
f.resume(22)
puts "step 4"
f.resume(33)
puts "step 6"
f.resume(44)
puts "ended"




