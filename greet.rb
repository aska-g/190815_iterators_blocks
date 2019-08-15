def greet(first, last)
  "Hello #{first.capitalize} #{last.capitalize}"
end

greet('john', 'doe')


def formatted_name(first, last)
  name = "#{first.capitalize} #{last.capitalize}"
  puts yield(name)
end


formatted_name('jane', 'doe') do |name|
  "Ciao #{name}"
end

formatted_name('joanna', 'g') do |name|
  "Cześć #{name}"
end

formatted_name('ola', 'nordmann') do |name|
  "You owe 10000 NOK to the bank, #{name}"
end

