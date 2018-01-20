def example_args(a, b, c = 3, *d)
  [a, b, c].concat d
end

p example_args(1, 2, 3, 4, 5, 6)
p example_args(1, 2, 3)
p example_args(1, 2)