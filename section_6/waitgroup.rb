class WaitGroup
  def initialize
    @count = 0
    @done = false
    @cond = ConditionVariable.new
    @lock = Mutex.new
  end

  def add(n = 1)
    @lock.synchronize do
      @count += n
    end
  end

  def done(n = 1)
    @lock.synchronize do
      @count -= n
      if @count.zero?
        @done = true
        @cond.broadcast
      end
    end
  end

  def wait
    @lock.synchronize do
      while(!@done)
        @cond.wait(@lock)
      end
    end
  end
end

wg = WaitGroup.new
wg.add(2)
f1_result = 0
f2_result = 0

f1 = Fiber.new do
  Thread.new do
    puts "f1 started"
    sleep(3)
    f1_result = 11
    wg.done
    puts "f1 ended"
  end
end

f2 = Fiber.new do
  Thread.new do
    puts "f2 started"
    sleep(2)
    f2_result = 22
    wg.done
    puts "f2 ended"
  end
end

f1.resume
f2.resume

wg.wait
puts f1_result
puts f2_result