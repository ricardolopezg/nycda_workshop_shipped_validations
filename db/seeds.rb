# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

####################CREATE USER DATA##################3
user_list = [
  [1, "Ricky@boats.com", "12341234", "12341234"],
  [2, "Bridget@boats.com", "password", "password"],
  [3, "Captain@boats.com", "ahoyahoy", "ahoyahoy"],
]

user_list.each do |id, email, password, password_confirmation|
  User.create!(id: id, email: email, password: password, password_confirmation: password_confirmation)
end

####################CREATE PROFILE DATA##################

profile_list = [
  [1, 1, "Ricardo", "Lopez-Guerrero", "RickyLopezG"],
  [2, 2, "Bridget", "McMillan", "bmcspillin"],
  [3, 3, "Captain", "Crunch", "CatchyHook"],
]

profile_list.each do |id, user_id, fname, lname, username|
  Profile.create!(id: id, user_id: user_id, fname: fname, lname: lname, username: username)
end

####################CREATE BOAT DATA##################

boat_list = [
  [1, 1, "Fiesta Bomba", 50, "Ibiza"],
  [2, 1, "SI Fairy", 125, "Monaco"],
  [3, 2, "La Sirena", 100, "Alexandria"],
  [4, 2, "La Petite Mort", 40, "Marseille"],
  [5, 2, "La Gringa", 90, "Barcelona"],
  [6, 2, "Hillary", 80, "Benghazi"],
  [7, 3, "NomNom", 75, "Ciutadella"]
]

boat_list.each do |id, user_id, boat_name, container_capacity, location|
  Boat.create!(id: id, user_id: user_id, boat_name: boat_name, container_capacity: container_capacity, location: location)
end

####################CREATE JOB DATA##################

job_list = [
  [1, 3, 70, "Dance the hempen jig fluke hearties Pieces of Eight scallywag port swing the lead gibbet yawl sheet. Sutler killick bilge rat hands gabion grog blossom tack gaff brigantine scuttle. Fire ship cackle fruit hornswaggle wench splice the main brace parrel lateen sail blow the man down log fluke.", "Algiers", "Valencia", 20000.00, "2017-03-15 [00:00:00]", "Swab the deck"],
  [2, 1, 50, "Sleep nap rub face on owner yet find empty spot in cupboard and sleep all day or attack feet, or why must they do that. Lick yarn hanging out of own butt chase dog then run away yet stare at ceiling light and asdflkjaertvlkjasntvkjn (sits on keyboard) brown cats with pink ears thinking longingly about tuna brine or human is washing you why halp oh the horror flee scratch hiss bite.", "Trieste", "Hvar", 18500.00, "2016-12-20 [00:00:00]", "Kittens"],
  [3, 2, 120, "Redeye acerbic grounds mug fair trade decaffeinated eu plunger pot. Iced foam turkish, doppio bar skinny qui coffee trifecta ut cortado cappuccino. Est seasonal cortado crema grounds brewed mug whipped aged. Instant, flavour est milk doppio pumpkin spice arabica.", "Monaco", "Taranto", 60000.00, "2017-04-01 [00:00:00]", "Coffee"],
  [4, 4, 25, "For the same reason you should believe a hundred dollar bill is no more than a hundred pennies! The worst that could happen is that I could spill coffee all over this $3,000 suit. COME ON. Ann, you need to decide whether you want a man or a boy. I know how I'd answer. I need a tea to give my dingle less tingle. But anyhoo, can you believe that the only reason the club is going under is because it's in a terrifying neighborhood? Second-of-ly, I know you're the big marriage expert. Oh I'm sorry, I forgot, your wife is dead. A night of heterosexual intercourse.", "Cannes", "Rijeka", 20000.00, "2016-10-12 [00:00:00]", "Bananas"],
  [5, 5, 75, "Port-salut queso boursin. Cheeseburger airedale fromage frais goat queso melted cheese when the cheese comes out everybody's happy pecorino. Everyone loves blue castello stinking bishop caerphilly goat goat airedale cheeseburger. Who moved my cheese cheese and wine pecorino port-salut queso edam swiss.", "Nice", "Haifa", 80000.00, "2016-02-01 [00:00:00]", "Cheese"],
  [6, 4, 15, "I didn't know our county was bi. Good for us. Detention is no big deal. Don't have a crap attack. Sometimes with Jimmy Jr, I don't know what to say. But now I don't know what not to say and it's like okay guys, who can get to my mouth first? Is it possible to be in love with 25 people at once? I'm not spooked. What's the next thing after spooked? I'm that. She grabbed Jimmy Jr's butt and changed the world.", "Marseille", "Tel-Aviv", 30000.00, "2017-03-15 [00:00:00]", "Burgers"],
  [7, 6, 75, "Cupcake ipsum dolor sit amet chocolate pie cupcake. Chupa chups apple pie ice cream chocolate bar. Cake pastry liquorice chocolate bar caramels wafer jujubes wafer.", "Toulon", "Piraeus", 45000.00, "2017-03-15 [00:00:00]", "Cupcakes"],
  [8, 3, 85, " Shoulder brisket tri-tip kevin, strip steak jowl ground round pork loin porchetta sausage andouille leberkas picanha. Chuck capicola sausage ham hock, alcatra tongue turducken filet mignon pig pork loin jowl cow hamburger picanha salami.", "Valencia", "Bari", 75000.00, "2016-08-10 [00:00:00]", "Bacon"],
  [9, 6, 60, "Tousled meggings flannel, normcore kale chips seitan venmo lomo selfies drinking vinegar. Selfies green juice franzen, beard letterpress truffaut drinking vinegar gochujang. Try-hard salvia lomo, disrupt meditation hella PBR&B ethical tofu seitan biodiesel. Brooklyn mixtape neutra, freegan twee salvia etsy distillery shoreditch polaroid organic. ", "Zadar", "Budva", 75000.00, "2016-11-01 [00:00:00]", "Hipsters"]
]

job_list.each do |id, boat_id, containers_needed, cargo, origin, destination, cost, delivery_date, title|
  Job.create!(id: id, boat_id: boat_id, containers_needed: containers_needed, cargo: cargo, origin: origin, destination: destination, cost: cost, delivery_date: delivery_date, title: title)
end
