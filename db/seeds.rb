# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Resolution.destroy_all
Report.destroy_all
User.destroy_all


heart = Realm.create({
    realm: "Heart"
})
mind = Realm.create({
    realm: "Mind"
})
soul = Realm.create({
    realm: "Soul"
})

user_1 = User.create({
    username: "John@email.com",
    password: "password"
})

resolution_1 = Resolution.create({
    goal: "Read a new book each month",
    motivation: "Expand my knowledge and be smarter.",
    image: "https://www.pe.com/wp-content/uploads/2019/06/636337794-1.jpg?w=863",
    user: user_1,
    realm: mind
})

report_1 = Report.create({
    status: "Have not read a book this month.",
    challenges: "Been busy with my code bootcamp. My mind needs a rest.",
    learned: "I need to schedule out my free time and plan ahead.",
    image: "https://www.pe.com/wp-content/uploads/2019/06/636337794-1.jpg?w=863",
    resolution: resolution_1
})
