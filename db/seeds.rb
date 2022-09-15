# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
x = Subject.create(description: "Matematica")

y = Question.create(description: 'Diga a raiz de 9',subject: x)
a1 = Answer.create(description:"3", correct: true, question_id: y.id)
a2 = Answer.create(description:"2.9",correct: false,question_id: y.id)

y2 = Question.create(description: 'Quanto é 22 + 13 ?',subject: x)
a3 = Answer.create(description:"35", correct: true, question_id: y2.id)
a4 = Answer.create(description:"12",correct: false,question_id: y2.id)
a5 = Answer.create(description:"13",correct: false,question_id: y2.id)
a6 = Answer.create(description:"36",correct: false,question_id: y2.id)

y3 = Question.create(description: '5 é impar?',subject: x)
a13 = Answer.create(description:"sim", correct: true, question_id: y3.id)
a23= Answer.create(description:"nao",correct: false,question_id: y3.id)
