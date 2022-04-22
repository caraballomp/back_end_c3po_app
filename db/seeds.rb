puts '🌱 Seeding spices...'
puts 'Deleting User/Species/Creature/Pet data...'
User.destroy_all
Creature.destroy_all
Pet.destroy_all
Species.destroy_all

puts 'Creating users...'
user1 = User.create(username: 'Jedi')
user2 = User.create(username: 'Light')

puts 'Creating creatures...'
c1 =
  Creature.create(
    creature_type: 'Porg',
    film: 'Star Wars: The Last Jedi',
    image_url: 'https://cdn.mos.cms.futurecdn.net/X5qTLtgXw7XBU9XUQjszE3.jpg',
  )
c2 =
  Creature.create(
    creature_type: 'Jawas',
    film: 'Star Wars: The Rise of Skywalker',
    image_url:
      'https://i.pinimg.com/originals/f9/0b/f7/f90bf7d05227a12de42df31698b4c24a.jpg',
  )
c3 =
  Creature.create(
    creature_type: 'Ewoks',
    film: 'Star Wars: The Rise of Skywalker',
    image_url:
      'https://i.pinimg.com/736x/4d/28/b6/4d28b6a6b35c6a5d32abaa602c40cdeb--warwick-davis-finn-star-wars.jpg',
  )
c4 =
  Creature.create(
    creature_type: 'Hutt',
    film: 'Star Wars: Return of the Jedi',
    image_url:
      'https://oyster.ignimgs.com/mediawiki/apis.ign.com/star-wars-episode-7/8/83/Jabba-the-hut.jpg',
  )
c5 =
  Creature.create(
    creature_type: 'Bantha',
    film: 'Star Wars: The Phantom Menace',
    image_url:
      'https://creditsandcanon.files.wordpress.com/2020/10/chapter9main.jpg',
  )
c6 =
  Creature.create(
    creature_type: 'Dewbacks',
    film: 'Star Wars: A New Hope',
    image_url:
      'https://www.gamespot.com/a/uploads/scale_medium/1561/15615114/2964179-dewbacks.jpg',
  )
c7 =
  Creature.create(
    creature_type: 'Wookiees',
    film: 'Star Wars: Revenge of the Sith',
    image_url:
      'https://i.pinimg.com/474x/7b/86/91/7b869162e01c276b286788d9ab6514f2.jpg',
  )
c8 =
  Creature.create(
    creature_type: 'Krayt Dragon',
    film: 'Star Wars: A New Hope',
    image_url:
      'https://boundingintocomics.com/wp-content/uploads/2020/10/2020.10.31-04.30-boundingintocomics-5f9d9135ccf60.jpg',
  )
c9 =
  Creature.create(
    creature_type: 'Kel Dors',
    film: 'Star Wars: Attack of the Clones',
    image_url:
      'https://www.denofgeek.com/wp-content/uploads/2021/08/plo-koon-mandalorian-dailies-render-disney.jpg?fit=1200%2C680',
  )
c10 =
  Creature.create(
    creature_type: 'Yoda',
    film: 'Star Wars: Attack of the Clones',
    image_url: 'https://cdn.ndtv.com/tech/images/gadgets/yoda_dagobah.jpg?',
  )
c11 =
  Creature.create(
    creature_type: 'Vulptex',
    film: 'Star Wars: The Last Jedi',
    image_url:
      'https://insidethemagic.net/wp-content/uploads/2017/11/CrystalFox-800x400.jpg',
  )
c12 =
  Creature.create(
    creature_type: 'Sarlacc',
    film: 'Star Wars: Return of the Jedi',
    image_url:
      'https://www.jornalciencia.com/wp-content/uploads/2017/01/sarlacc_01-1000x500.jpg',
  )
c13 =
  Creature.create(
    creature_type: 'Tusken Raiders',
    film: 'Star Wars: A New Hope',
    image_url:
      'https://i.pinimg.com/564x/de/7e/99/de7e997dbf1834df7f20b72bfd4e4f17.jpg',
  )
c14 =
  Creature.create(
    creature_type: 'Geonosian',
    film: 'Star Wars: Revenge of the Sith',
    image_url: 'https://wiki.darkjedibrotherhood.com/images/5/53/Xaezhul1.jpg',
  )
c15 =
  Creature.create(
    creature_type: 'Vexis',
    film: 'Star Wars: The Rise of Skywalker',
    image_url:
      'https://i.pinimg.com/564x/3a/db/c5/3adbc5bfa1a38f1d9a77f250a2fc1f06.jpg',
  )

puts 'Creating pets...'
Pet.create(user_id: user1.id, creature_id: c1.id)
Pet.create(user_id: user1.id, creature_id: c2.id)
Pet.create(user_id: user2.id, creature_id: c5.id)

puts 'Creating species...'
Species.create(species_name: 'JaJa', description: "It's stronger than a lion")

puts '✅ Done seeding!'
