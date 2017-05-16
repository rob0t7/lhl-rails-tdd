# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sawdust = Brewery.find_or_create_by!(name: 'Sawdust City')
beaus   = Brewery.find_or_create_by!(name: 'Beaus')

ipa = Style.find_or_create_by!(name: 'IPA')
kolsch = Style.find_or_create_by!(name: 'Kolsch')

Beer.find_or_create_by!(name: 'Lone Pine') do |beer|
  beer.attributes = {
    brewery: sawdust,
    style: ipa,
    abv: 5.6
  }
end
Beer.find_or_create_by!(name: 'Lug Tread') do |beer|
  beer.attributes = {
    brewery: beaus,
    style: kolsch,
    abv: 4.5
  }
end
