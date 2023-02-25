# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Word.destroy_all

user = User.create!( email: "guest@test.com", password: "123456")
user = User.create!( email: "guest1@test.com", password: "123456")
user = User.create!( email: "guest2@test.com", password: "123456")
user = User.create!( email: "guest3@test.com", password: "123456")
user = User.create!( email: "guest4@test.com", password: "123456")
user = User.create!( email: "guest5@test.com", password: "123456")


#word = Word.create!( family: "noun", core: "bil", user: user)
#Translation.create!( meaning: "car", word: word)
#Translation.create!( meaning: "test1meaning2", word: word)
#Sentence.create!( body: "This is a sentence with #{word}", word: word)

#word= Word.create!( family: "noun", core: "test2", user: user)
#Translation.create!( meaning: "test2meaning1", word: word)
#Sentence.create!( body: "This is a sentence with #{word}", word: word)
