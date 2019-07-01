require_relative '../config/environment.rb'

duchamp = Artist.new("Marcel Duchamp", 54)
picasso = Artist.new("Pablo Picasso", 34)
gallery1 = Gallery.new("Art101", "Brooklyn")
gallery2 = Gallery.new("MoMA", "Manhattan")
gallery3 = Gallery.new("MetMuseum", "Manhattan")

duchamp.create_painting("Nude Descending Staircase, No. 2", 7800, gallery1)
duchamp.create_painting("Fountain", 1762500, gallery1)

binding.pry

puts "Bob Ross rules."
