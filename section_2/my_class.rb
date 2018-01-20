# Example class
class Hey
  @@bye_name = 'Whatever'

  attr_writer :name
  attr_reader :name, :times

  def initialize(name)
    @name = name
    @times = 5
  end

  def hello
    @times.times do
      puts "hello world #{@name}"
    end
  end

  def self.bye
    puts "bye #{@@bye_name}"
  end
end

ob = Object.new

# Singleton class
class << ob
  def whatever
    puts "test"
  end
end



h = Hey.new('Lucas')
h2 = Hey.new('Pablo')

def h.bye_name
  puts "bye #{@name}"
end

h.hello
Hey.bye
h.bye_name