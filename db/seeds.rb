b1 = Brewery.create name:"Koff", year:1897
b2 = Brewery.create name:"Malmgard", year:2001
b3 = Brewery.create name:"Weihenstephaner", year:1042

b1.beers.create name:"Iso 3"
b1.beers.create name:"Karhu"
b1.beers.create name:"Tuplahumala"
b2.beers.create name:"Huvila Pale Ale"
b2.beers.create name:"X Porter"
b3.beers.create name:"Hefezeizen"
b3.beers.create name:"Helles"
