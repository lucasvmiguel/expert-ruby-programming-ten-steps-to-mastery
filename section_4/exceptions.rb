x = nil

begin
  x = 10 / 1
  # raise TypeError
rescue TypeError, ZeroDivisionError => e
  x = 0
  p e.class
  p e
  # retry # retry code again before excepetion was raised 
rescue Exception => e
  x = 0
  p e.class
  p e
else
  # execute when has not error
ensure
  x += 2
end

p x