# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(name: 'user1', email: 'user1@mail.ru', password: '123')
user2 = User.create!(name: 'user2', email: 'user2@mail.ru', password: '1234')
user3 = User.create!(name: 'user3', email: 'user3@mail.ru', password: '12345')
user4 = User.create!(name: 'user4', email: 'user4@mail.ru', password: '123456')

category1 = Category.create!(title: 'Backend')
category2 = Category.create!(title: 'Frontend')
category3 = Category.create!(title: 'Machine Learning')
category4 = Category.create!(title: 'Analytics')

test1 = Test.create!(title: 'Ruby', level: 1, category: category1)
test2 = Test.create!(title: 'HTML', category: category2)
test3 = Test.create!(title: 'GO', level: 2, category: category3)
test4 = Test.create!(title: 'Python', level: 1, category: category4)

question1 = Question.create!(title: 'Question1', test: test1)
question2 = Question.create!(title: 'Question2', test: test2)
question3 = Question.create!(title: 'Question3', test: test3)
question4 = Question.create!(title: 'Question4', test: test4)

answer1 = Answer.create!(title: 'Ответ1', question: question1)
answer2 = Answer.create!(title: 'Ответ2', question: question2)
answer3 = Answer.create!(title: 'Ответ3', question: question3)
answer4 = Answer.create!(title: 'Ответ4', question: question4, correct: 1)


answer5 = Answer.create!(title: 'Ответ5', question: question1, correct: 1)
answer6 = Answer.create!(title: 'Ответ6', question: question2, correct: 1)
answer7 = Answer.create!(title: 'Ответ7', question: question3, correct: 1)
answer8 = Answer.create!(title: 'Ответ8', question: question4)

completed_test1 = CompletedTest.create!(user: user1, test: test1)
completed_test2 = CompletedTest.create!(user: user2, test: test2)
completed_test3 = CompletedTest.create!(user: user3, test: test3)
completed_test4 = CompletedTest.create!(user: user4, test: test4)

