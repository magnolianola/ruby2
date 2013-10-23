students = {
		:cohort1 => 34,
		:cohort2 => 42,
		:cohort3 => 22
}

students[:cohort4] = 43

students.each do |key, value|
	puts "#{key}: #{value} students"	
end

puts "Names of the cohorts: "
puts students.keys

def new_cohort1
	(34*0.05)+34
end
def new_cohort2
	(42*0.05)+42
end
def new_cohort3
	(22*0.05)+22
end
def new_cohort4
	(43*0.05)+43
end

puts "With a 5% increase of students, that would be:"
puts new_cohort1.ceil
puts new_cohort2.ceil
puts new_cohort3.ceil
puts new_cohort4.ceil

puts "Without cohort2, there remains:"
students.delete(:cohort2)
students.each do |key, value|
puts "#{key}: #{value} students"	
end

puts "The total number of students in all cohorts is: "
puts students.values.inject { |a, b| a + b }
