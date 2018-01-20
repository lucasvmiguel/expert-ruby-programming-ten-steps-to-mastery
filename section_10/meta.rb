p eval("1 + 2")
p "#{1 + 2}"

String::class_eval{ define_method(:bye){ puts "bye" } }
class String
  remove_method(:reverse)
end

"Hello".bye
"Hello".reverse