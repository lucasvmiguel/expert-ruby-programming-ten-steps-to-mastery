text = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'

p text.scan(/(Ipsum)/)
p(/abc/ =~ 'abc')
p(/abc/ =~ 'xycabcd')
p(/abc/ =~ 'sdgdfggdfd')


text.match(/simply/).to_a.each{ |item| puts item }

begin
  file = File.open("myfile.txt")
  text = file.read
  text.each_line do |line|
    puts line if line =~ /line/
  end
rescue StandardError => e
  puts "error to read file: #{e}"
ensure
  file.close unless file.nil?
end