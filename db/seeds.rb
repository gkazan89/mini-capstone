# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guitar.create([
  {
    name: 'Fender Stratocaster',
    price: 500,
    image_url: 'https://images-na.ssl-images-amazon.com/images/I/71Tdb3LehLL._SL1500_.jpg',
    description: 'The classic electric guitar. Famous players: Jimi Hendrix, Eric Clapton, Stevie Ray Vaughn',
  },
  {
    name: 'Gibson Les Paul',
    price: 600,
    image_url: 'https://images.musicstore.de/images/0960/gibson-les-paul-custom-ebony-limited-edition_1_GIT0042320-000.jpg',
    description: 'Rock the world! Made famous by Slash, Jimmy Page, and Pete Townsend',
  },
  {
    name: 'Epiphone Casino',
    price: 400,
    image_url: 'http://www.long-mcquade.com/files/7532/lg_ETCACHCH.jpg',
    description: 'A classic and versatile instrument. Play like Gary Clark Jr, The Edge, and Keith Richards',
  }

])
