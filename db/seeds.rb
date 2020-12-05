# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Legislator.destroy_all
Post.destroy_all

legislator01 = Legislator.create!({name: "demouser", party: "democrat", chamber: "house"})
post01 = Post.create!({title: "first post", body: "this is the first", status: "passed-house", author_id: legislator01.id})