students = %w[jeremie petter]

# CRUD

# create
students << 'magnus'

# read
students[1]

# update
students[0] = 'agnieszka'

# delete
students.delete_at(1)


test_students = students.each do |student|
  "- #{student}"
end

p test_students


# [agnieszka, magnus]

for student in students
  "- #{student}"
end


# for 0   in 0...2 => agnieszka
# for 1    in 0...2 => magnus
for index in 0...(students.size)
  "#{index + 1}. #{students[index]}"
end

# - jeremie
# - agnieszka

















