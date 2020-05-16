# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sense_and_sensability = Novel.create(title: "Sense & Sensibility")
pride_and_prejudice = Novel.create(title: "Pride & Prejudice")
persuasion = Novel.create(title: "Persuasion")
emma = Novel.create(title: "Emma")
northanger_abbey = Novel.create(title: "Northanger Abbey")
mansfield_park = Novel.create(title: "Mansfield Park")

mr_darcy = Character.create(name: "Mr. Fitzwilliam Darcy", loves: "Miss Elizabeth Bennet", novel: pride_and_prejudice)
mr_bingley = Character.create(name: "Mr. Charles Bingley", loves: "Miss Jane Bennet", novel: pride_and_prejudice)
e_ferrars = Character.create(name: "Mr. Edward Ferrars", loves: "Miss Elinor Dashwood", novel: sense_and_sensability)
col_brandon = Character.create(name: "Colonel Christopher Brandon", loves: "Miss Marianne Dashwood", novel: sense_and_sensability)
mr_knightly = Character.create(name: "Mr. George Knightley", loves: "Miss Emma Woodhouse", novel: emma)
f_churchill = Character.create(name: "Mr. Frank Chrchill", loves: "Miss Jane Fairfax", novel: emma)