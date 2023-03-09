# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..." # why it doesn't work?
Movie.destroy_all
# List.destroy_all

puts "Creating movies..."
Movie.create(title: "99 Francs", overview: "99 Francs is a 2007 French satirical film based on the novel 99 Francs, by Frédéric Beigbeder, the film stars Jean Dujardin. The film is a satire on the modern advertisement business.", poster_url: "https://i.pinimg.com/originals/66/10/08/66100873e8fcd9011931c77d184fe8f0.jpg", rating: 6.9)

Movie.create(title: "Avatar", overview: "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home. When his brother is killed in a robbery, paraplegic Marine Jake Sully decides to take his place in a mission on the distant world of Pandora.", poster_url: "https://image.tmdb.org/t/p/original/yqayiDD4OFQkpDzny6NEDD1I3up.jpg", rating: 8.7)

Movie.create(title: "City of God", overview: "A realistic yet humorous look at the lives of Laranjinha and Acerola, two friends who live adventurous and dangerous lives in a Rio de Janeiro slum.", poster_url: "https://i.pinimg.com/originals/c0/4e/51/c04e51397d00ba4550367df5c96b9684.jpg", rating: 7.9)

Movie.create(title: "Kill Bill", overview: "The Bride is a female assassin, a trained killer who has been betrayed by The Deadly Viper Assassination Squad led by her former boss Bill who gunned her down at her wedding leaving her for dead. The Bride awakes four years later and she sets out to begin her quest for vengeance.", poster_url: "https://www.themoviedb.org/t/p/original/btM7n4I7qXdMMiYJ4WZGh4SRuWt.jpg", rating: 7.0)
puts "Finished!"

puts "Creating lists..."
List.create!(name: "My favorites movies")
List.create!(name: "Fictions")

puts "Finished!"
