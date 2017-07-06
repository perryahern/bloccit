# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Post.find_or_create_by!(title: "Becca Hatelace Rules!", body: "She's just awesome. There's nobody more awesomer. She's awesomesauce!")
Comment.create_with(post_id: "51").find_or_create_by!(body: "Ragnarok will not be denied, not even by Becca Hatelace...")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
