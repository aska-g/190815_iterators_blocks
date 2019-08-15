students = %w[jeremie petter jaemin]

# EACH_WITH_INDEX

# WITH A FOR LOOP
# for index in 0...(students.size)
#   puts "#{index + 1}. #{students[index]}"
# end

students.each_with_index do |student, index|
  "#{index + 1}. #{student}"
end


# MAP
# capitalized_students = []
# students.each do |student|
#   capitalized_students << student.capitalize
# end

capitalized_students = students.map do |student|
  student.capitalize
end

# => ["Jeremie", "Petter", "Jaemin"]


# COUNT

# count = 0
# students.each do |student|
#   count += 1 if student[0] == 'j'

#   # if student[0] == 'j'
#   #   count += 1       #== count = count + 1
#   # end
# end

count = students.count do |student|
  student[0] == 'j'
end



# SELECT

# j_students = []
# students.each do |student|
#   j_students << student if student[0] == 'j'
# end

j_students = students.select do |student|
  student[0] == 'j'
end

p j_students



# REJECT

non_j_students = students.reject do |student|
  student[0] == 'j'
end

p non_j_students


















