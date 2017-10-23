# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Vijay")
User.create(username: "Tim")

User.create(username: "Jason")
User.create(username: "Es")


Group.create(name: "Poem Kings")
Group.create(name: "Lyric Queens")

GroupUser.create(user_id: 1, group_id: 1)
GroupUser.create(user_id: 2, group_id: 1)

GroupUser.create(user_id: 3, group_id: 2)
GroupUser.create(user_id: 4, group_id: 2)

Poem.create(title: "Love Song", content: "You smell like a rose in a dove's beak.", group_id: 1)
Poem.create(title: "Hate Song", content: "You smell like a pig in a haystack.", group_id: 2)

Comment.create(description: "I really like this poem :-)", poem_id: 1, user_id: 1)
Comment.create(description: "I dig this verse", poem_id: 2, user_id: 2)
