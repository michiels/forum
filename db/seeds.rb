# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

20.times do
  content = Faker::Lorem.paragraphs((2..5).to_a.sample).inject('') do |html, paragraph|
    html << paragraph
    html
  end
  Post.create [{title: Faker::Lorem.words((2..6).to_a.sample).join(' '), content: content}]
end
