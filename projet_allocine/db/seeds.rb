# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Movie.delete_all

100.times do |i|
  movie = Movie.new
  movie.name = Faker::Name.name_with_middle
  
  movie.save
end


=begin
  Movie.create(name: "Joker", year: 2019, genre: "Drame", synopsis: "Le film, qui relate une histoire originale inédite sur grand écran, se focalise sur la figure emblématique de l’ennemi juré de Batman. Il brosse le portrait d’Arthur Fleck, un homme sans concession méprisé par la société.", director: "Todd Phillips", allocine_rating: 4.5, my_rating: 5, already_seen: true)
  puts "Film JOKER ajouté"

  Movie.find_by(name: "Beowulf").update(allocine_rating: 4.7)
  puts "Note du chef d'oeuvre BEOWULF mise à jour !"

  Movie.find_by(name: "L'Exorciste").update(genre: "Comédie")
  puts "L'Exorciste va maintenant te faire rire"

  seen_movies = Movie.where(already_seen: true)
  puts "Voici les films que tu as déjà vu : "
  seen_movies.each do |m|
    puts "- " + m.name
  end

  Movie.find_by(already_seen: true).destroy
  puts "Le film #{seen_movies[0].name} a été supprimé !"
=end
