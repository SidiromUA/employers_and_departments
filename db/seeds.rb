# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

department_first = Department.create(name: "HR")
department_second = Department.create(name: "Finance")
department_third = Department.create(name: "Sales")
department_fourth = Department.create(name: "Support")
department_fifth = Department.create(name: "Marketing")
department_sixth = Department.create(name: "Accouting")

3.times do |i|
  Employee.create(name: "Name Random ##{i}", active: true, department_id: department_first.id)
end

5.times do |i|
  Employee.create(name: "Name Random ##{i}", active: true, department_id: department_second.id)
end

10.times do |i|
  Employee.create(name: "Name Random ##{i}", active: true, department_id: department_third.id)
end

2.times do |i|
  Employee.create(name: "Name Random ##{i}", active: true, department_id: department_fourth.id)
end

8.times do |i|
  Employee.create(name: "Name Random ##{i}", active: true, department_id: department_fifth.id)
end

4.times do |i|
  Employee.create(name: "Name Random ##{i}", active: true, department_id: department_sixth.id)
end

2.times do |i|
  Employee.create(name: "Name Random ##{i}", active: false, department_id: department_third.id)
end

3.times do |i|
  Employee.create(name: "Name Random ##{i}", active: false, department_id: department_second.id)
end

2.times do |i|
  Employee.create(name: "Name Random ##{i}", active: false, department_id: department_fifth.id)
end
