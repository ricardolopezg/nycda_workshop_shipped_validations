# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Profile.destroy_all
Boat.destroy_all
Job.destroy_all

####################CREATE USER DATA##################
user_list = [
  ["Ricky@boats.com", "12341234", "12341234"],
  ["Bridget@boats.com", "password", "password"],
  ["Captain@boats.com", "ahoyahoy", "ahoyahoy"],
]

user_list.each do |email, password, password_confirmation|
  User.create(email: email, password: password, password_confirmation: password_confirmation)
end

####################CREATE PROFILE DATA##################

user_id = User.first.id

profile_list = [
  [user_id, "Ricardo", "Lopez-Guerrero", "RickyLopezG"],
  [user_id + 1, "Bridget", "McMillan", "bmcspillin"],
  [user_id + 2, "Captain", "Crunch", "CatchyHook"],
]

profile_list.each do |fname, lname, username|
  Profile.where(:user_id).update(fname: fname, lname: lname, username: username)
end

####################CREATE BOAT DATA##################

boat_list = [
  [user_id, "Fiesta Bomba", 50, "Ibiza"],
  [user_id, "SI Fairy", 125, "Monaco"],
  [user_id + 1, "La Sirena", 100, "Alexandria"],
  [user_id + 1, "La Petite Mort", 40, "Marseille"],
  [user_id + 1, "La Gringa", 90, "Barcelona"],
  [user_id + 1, "Hillary", 80, "Benghazi"],
  [user_id + 2, "NomNom", 75, "Ciutadella"]
]

boat_list.each do |user_id, boat_name, container_capacity, location|
  Boat.where(:user_id)
  Boat.update(boat_name: boat_name, container_capacity: container_capacity, location: location)
end

####################CREATE JOB DATA##################
boat_id = Boat.first.id

job_list = [
  [boat_id + 2, 70, "Dance the hempen jig fluke hearties Pieces of Eight scallywag port swing the lead gibbet yawl sheet. Sutler killick bilge rat hands gabion grog blossom tack gaff brigantine scuttle. Fire ship cackle fruit hornswaggle wench splice the main brace parrel lateen sail blow the man down log fluke.", "Algiers", "Valencia", 20000.00, "2017-03-15 [00:00:00]", "Swab the deck"],
  [boat_id, 50, "Sleep nap rub face on owner yet find empty spot in cupboard and sleep all day or attack feet, or why must they do that. Lick yarn hanging out of own butt chase dog then run away yet stare at ceiling light and asdflkjaertvlkjasntvkjn (sits on keyboard) brown cats with pink ears thinking longingly about tuna brine or human is washing you why halp oh the horror flee scratch hiss bite.", "Trieste", "Hvar", 18500.00, "2016-12-20 [00:00:00]", "Kittens"],
  [boat_id + 1, 120, "Redeye acerbic grounds mug fair trade decaffeinated eu plunger pot. Iced foam turkish, doppio bar skinny qui coffee trifecta ut cortado cappuccino. Est seasonal cortado crema grounds brewed mug whipped aged. Instant, flavour est milk doppio pumpkin spice arabica.", "Monaco", "Taranto", 60000.00, "2017-04-01 [00:00:00]", "Coffee"],
  [boat_id + 3, 25, "For the same reason you should believe a hundred dollar bill is no more than a hundred pennies! The worst that could happen is that I could spill coffee all over this $3,000 suit. COME ON. Ann, you need to decide whether you want a man or a boy. I know how I'd answer. I need a tea to give my dingle less tingle. But anyhoo, can you believe that the only reason the club is going under is because it's in a terrifying neighborhood? Second-of-ly, I know you're the big marriage expert. Oh I'm sorry, I forgot, your wife is dead. A night of heterosexual intercourse.", "Cannes", "Rijeka", 20000.00, "2016-10-12 [00:00:00]", "Bananas"],
  [boat_id + 4, 75, "Port-salut queso boursin. Cheeseburger airedale fromage frais goat queso melted cheese when the cheese comes out everybody's happy pecorino. Everyone loves blue castello stinking bishop caerphilly goat goat airedale cheeseburger. Who moved my cheese cheese and wine pecorino port-salut queso edam swiss.", "Nice", "Haifa", 80000.00, "2016-02-01 [00:00:00]", "Cheese"],
  [boat_id + 3, 15, "I didn't know our county was bi. Good for us. Detention is no big deal. Don't have a crap attack. Sometimes with Jimmy Jr, I don't know what to say. But now I don't know what not to say and it's like okay guys, who can get to my mouth first? Is it possible to be in love with 25 people at once? I'm not spooked. What's the next thing after spooked? I'm that. She grabbed Jimmy Jr's butt and changed the world.", "Marseille", "Tel-Aviv", 30000.00, "2017-03-15 [00:00:00]", "Burgers"],
  [boat_id + 5, 75, "Cupcake ipsum dolor sit amet chocolate pie cupcake. Chupa chups apple pie ice cream chocolate bar. Cake pastry liquorice chocolate bar caramels wafer jujubes wafer.", "Toulon", "Piraeus", 45000.00, "2017-03-15 [00:00:00]", "Cupcakes"],
  [boat_id + 2, 85, " Shoulder brisket tri-tip kevin, strip steak jowl ground round pork loin porchetta sausage andouille leberkas picanha. Chuck capicola sausage ham hock, alcatra tongue turducken filet mignon pig pork loin jowl cow hamburger picanha salami.", "Valencia", "Bari", 75000.00, "2016-08-10 [00:00:00]", "Bacon"],
  [boat_id + 5, 60, "Tousled meggings flannel, normcore kale chips seitan venmo lomo selfies drinking vinegar. Selfies green juice franzen, beard letterpress truffaut drinking vinegar gochujang. Try-hard salvia lomo, disrupt meditation hella PBR&B ethical tofu seitan biodiesel. Brooklyn mixtape neutra, freegan twee salvia etsy distillery shoreditch polaroid organic. ", "Zadar", "Budva", 75000.00, "2016-11-01 [00:00:00]", "Hipsters"]
]

job_list.each do |boat_id, containers_needed, cargo, origin, destination, cost, delivery_date, title|
  Job.create!(boat_id: boat_id, containers_needed: containers_needed, cargo: cargo, origin: origin, destination: destination, cost: cost, delivery_date: delivery_date, title: title)
end
