f = File.new("myfile.txt", "w")
f.puts("first line", "second line")
f.close

f = File.new("myfile.txt", "r")

while !(f.eof) do
  c = f.getc()
  putc(c)
end

f.close