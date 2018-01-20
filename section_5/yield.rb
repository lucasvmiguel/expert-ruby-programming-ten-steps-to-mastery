def simple_puts(arg)
  puts "simple #{arg}"
  return "simple #{arg}"
end

def call_fn_1(arg, &b)
  puts 'call call_fn_1'
  # b.call(arg)
  yield(arg)
end

def call_fn_2(arg, b)
  puts 'call call_fn_2'
  b.call(arg)
end

def call_fn_3(arg, &b)
  puts 'call call_fn_3'
  yield(arg)
end

p call_fn_1(10) { |i| i * 10 }
p call_fn_2(10, proc { |i| i * 20 })
p call_fn_3(33) { |i| simple_puts(i) }