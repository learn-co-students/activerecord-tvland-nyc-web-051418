#Runfile for ruby project
require_relative 'config/environment.rb'


#Actor => Tony Reiser
hashp = {first_name: "Tony", last_name: "Reiser"}
tr = Actor.create(hashp)

#Show => Weary Traveler
hashs = {name: "Weary Traveler"}
wt = Show.create(hashs)

#Character => Traveler
hashc = {name: "Traveler", show_id: wt.id, actor_id: tr.id, catchphrase: "A thing of the past!"}
traveler = Character.create(hashc)

malcolm = Character.new(:name => "Malcolm Reynolds")
# We can use the build_xxx method all the way up a chain,
# because each one returns an instance of that type of object
malcolm.build_show(:name => "Firefly").build_network(:call_letters => "Fox")
show = malcolm.show

binding.pry
