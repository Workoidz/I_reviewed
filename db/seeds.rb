# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#rescue Exception => e
	
#end

Book.destroy_all
Reviewer.destroy_all

reviewers = Reviewer.create! [
  { name: "Joe", password: "abc123" },
  { name: "Jim", password: "123abc" },
  { name: "ravi", password: "ravi@123"}
]

joe = Reviewer.find_by name: "Joe"
jim = Reviewer.find_by name: "Jim"

Book.create! [
  { name: "Eloquent Ruby", author: "Russ Olsen", reviewer_id: joe.id },
  { name: "Beginning Ruby", author: "Peter Cooper", reviewer_id: joe.id },
  { name: "Metaprogramming Ruby 2", author: "Paolo Perrotta", reviewer_id: jim.id },
  { name: "Design Patterns in Ruby", author: "Russ Olsen", reviewer_id: joe.id },
  { name: "The Ruby Programming Language", author: "David Flanagan", reviewer_id: jim.id }
]

100.times { |index| Book.create! name: "Book #{index}", author: "Author #{index}", reviewer_id: reviewers.sample.id}

eloquent = Book.find_by name: "Eloquent Ruby"
eloquent.notes.create! [
  { title: "Wow", note: "Great book to learn Ruby"},
  { title: "Funny", note: "Doesn't put you to sleep"}
]
