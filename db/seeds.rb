# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_list = [
  %w[user1 user1],
  %w[user2 user2],
  %w[user3 user3],
  %w[user4 user4]
]

user_list.each do |title, password|
  User.create!(title: title, password: password)
end

Answer.create!(title: 'Ответ1')
Answer.create!(title: 'Ответ2')
Answer.create!(title: 'Ответ3')
Answer.create!(title: 'Ответ4', correct: 1)

Category.create!(title: 'Backend')
Category.create!(title: 'Frontend')
Category.create!(title: 'Machine Learning')
Category.create!(title: 'Analytics')

Question.create!(body: 'Question1', test_id: 1)
Question.create!(body: 'Question2', test_id: 1)
Question.create!(body: 'Question3', test_id: 2)
Question.create!(body: 'Question4', test_id: 3)

Test.create!(title: 'Ruby', level: 1)
Test.create!(title: 'HTML')
Test.create!(title: 'GO', level: 2)
Test.create!(title: 'Python', level: 1)

