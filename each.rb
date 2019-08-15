def my_each(array)
  array = array.reverse
  for el in array
    yield(el)
  end
end


students = %w[jeremie petter agnieszka]

my_each(students) do |student|
  puts student
end
