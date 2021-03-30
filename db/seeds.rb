# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


tasks = [
  { title: "mop the floor", details: "mopping sanitizes your floor" },
  { title: "wash the dishes", details: "dishwashing made easy"},
  { title: "go shopping", details: "shopping is part of everyday life" },
  { title: "sweep the floor", details: "push dirt or garbage off it using a brush"}
]

tasks.each do |task|
  t = Task.create!(
    title: task[:title],
    details: task[:details]
)
  puts "created new task: #{t.title} "
end

puts "created#{Task.count} tasks"



