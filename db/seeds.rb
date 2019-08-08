# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Reviewer.create! [
  { name: "Joe", password_digest: "abc123" },
  { name: "Jim", password_digest: "123abc" }
]


Book.create! [
  { name: "Eloquent Ruby", author: "Russ Olsen", reviewer_id: 1 },
  { name: "Beginning Ruby", author: "Peter Cooper", reviewer_id: 1 },
  { name: "Metaprogramming Ruby 2", author: "Paolo Perrotta", reviewer_id: 2 },
  { name: "Design Patterns in Ruby", author: "Russ Olsen", reviewer_id: 1 },
  { name: "The Ruby Programming Language", author: "David Flanagan", reviewer_id: 2 }
]