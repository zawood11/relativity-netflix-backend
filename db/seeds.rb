# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding..."

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'netflix1.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    s = Show.new
    s.show_id = row['show_id']
    s.show_type = row['type']
    s.title = row['title']
    s.director = row['director']
    s.country = row['country']
    s.date_added = row['date_added']
    s.release_year = row['release_year']
    s.rating = row['rating']
    s.duration = row['duration']
    s.listed_in = row['listed_in']
    s.save

    puts "#{s.show_id}: #{s.title} saved."
  end

  puts "There are now #{Show.count} records in the shows table."