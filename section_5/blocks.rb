def example(x)
  x * 10
end

a = Proc.new{|x| x = x * 10}
b = lambda{|x| x = x * 10}
c = proc{|x| x = x * 10}

puts(a.class)
puts(b.class)
puts(c.class)

p a.call(10)
p b.call(10)
p c.call(10)

def call_fn(block)
  block.call(5)
end

2.times do |i|
  puts "a time #{i+1}"
end

3.times { |i|
  puts "b time #{i+1}"
}

p call_fn(a)
p call_fn(example)
