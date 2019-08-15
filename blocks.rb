# TIMER

def timer_simple
  start_time = Time.now
  sleep(1)
  end_time = Time.now

  puts "Elapsed time: #{end_time - start_time} s"
end


# ENHANCED TIMER

# method definition
def timer
  # 2. start executing the method
  start_time = Time.now
  yield # 3. jump out of 'timer', start execuding the block

  # 6. continue executing the method as per usual
  end_time = Time.now

  puts "Elapsed time: #{end_time - start_time} s"
end

# calling the method
timer do # 1. call the method 'timer'
  # 4. execute the block
  puts "starting a complicated task"
  sleep(1)
  puts "finished"
end # 5. go back to the 'timer' method

# 2nd call of the method
timer do
  puts "task 2"
  sleep(2)
  puts "finished task 2"
end

def hello
  puts "hello"
end

# 3rd call of the method
timer do
  hello
end

