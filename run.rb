require_relative 'config/environment.rb'
require "sinatra/activerecord/rake"

frasier = Show.new(:name => "Frasier")
niles = Character.new(:name => "Niles Crane")
niles.show = frasier
niles.save


jules_cobb = Character.new(:name => "Jules Cobb")
jules_cobb.build_show(:name => "Cougar Town")

malcolm = Character.new(:name => "Malcolm Reynolds")
malcolm.build_show(:name => "Firefly")

simpsons = Show.new
simpsons.name = "The Simpsons"
array = [
  Character.new(:name => "Ralph Wiggum"),
  Character.new(:name => "Homer Simpson"),
  Character.new(:name => "Apu Nahasapeemapetilon")
]

pry.Start
