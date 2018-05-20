# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Since no user has to deal with video creation, if the colour is not unique let it fail,
# manually try again
Video.create([{genre: :Action},{genre: :'Sci-Fi'},{genre: :News},{genre: :Action}])

