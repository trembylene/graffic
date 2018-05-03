puts "Cleaning database"
Supporter.destroy_all
Art.destroy_all

puts "Creating fake art..."

my_artist = [1, 2, 4, 6]

art = Art.new(
  photo: open("https://res.cloudinary.com/trembylene/image/upload/v1524553461/graffiti1-min.png"),
  location: "Flinders Court, Melbourne",
  latitude: "-37.8176435",
  longitude: "144.96428979999996",
  title: Faker::Book.title,
  description: "This work is a brilliantly colored, domestic site-specific installation consisting of familiar images which is reminiscent of an image of aspirational wealth. The work deploys race, class, and technology as a signifier of power structures.",
  tags: "colourful",
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)

art = Art.new(
  photo: open("https://res.cloudinary.com/trembylene/image/upload/v1524553461/graffiti2-min.png"),
  location: "122 Albert St, Port Melbourne",
  latitude: "-37.835375",
  longitude: "144.93615499999999",
  title: Faker::Book.title,
  description: "This work is a part landscape, part abstraction, environmental truncated history painting consisting of a United Nations scientist who has washed ashore after the world’s last nuclear battle which is reminiscent of formal precision and tenderness. The work deploys domestic spaces as labor-intensive processes.",
  tags: "colourful",
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(3)
art.liked_by User.find(2)

art = Art.new(
  photo: open("https://res.cloudinary.com/trembylene/image/upload/v1524553461/graffiti3-min.png"),
  location: "99 Beacon Rd, Port Melbourne",
  latitude: "-37.839027",
  longitude: "144.924586",
  title: Faker::Book.title,
  description: "This work is an erasure-inducing, religious precisely outlined areas of flat color consisting of a multi-channel sound and video installation which is reminiscent of waterfront pleasure palaces. The work deploys concurrently edited materials as subverting the traditional subject/object relationship.",
  tags: "urban",
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(2)
art.liked_by User.find(3)

art = Art.new(
  photo: open("https://res.cloudinary.com/trembylene/image/upload/v1524553461/graffiti5-min.png"),
  location: "396 Clarendon St, South Melbourne",
  latitude: "-37.836274",
  longitude: "144.961796",
  title: Faker::Book.title,
  description: "This work is an industrial, painterly hallucinatory montage consisting of uncanny performance of media narrative as childlike theater which is reminiscent of the soft, flaccid forms of upholstered furniture. The work deploys the interrogation of the semiotics of the object as lived histories and symbolic alternatives.",
  tags: "urban",
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(3)
art.liked_by User.find(2)

art = Art.new(
  photo: open("https://res.cloudinary.com/trembylene/image/upload/v1524553461/graffiti4-min.png"),
  location: "177 Cecil St, South Melbourne",
  latitude: "-37.834071",
  longitude: "144.958541",
  title: Faker::Book.title,
  description: "This work is an intimate and estranging, spiritual set of larger-than-life octopus consisting of silhouetted figures which is reminiscent of invented spaces. The work deploys archetypes as pointing out discomfort about otherness.",
  tags: "tentacle",
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!

art = Art.new(
  photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525314494/amxgbwhd9b5rvpgeavms.jpg"),
  location: "120 King Street, Melbourne",
  latitude: "-37.817409",
  longitude: "144.956309",
  title: Faker::Book.title,
  description: Faker::Lovecraft.sentences,
  tags: Faker::Lovecraft.words,
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525314663/y2ouvjqeeirzck7nusiq.jpg"),
  location: "34-18 Equitable Pl, Melbourne VIC 3000",
  latitude: "-37.815443",
  longitude: "144.963190",
  title: Faker::Book.title,
  description: Faker::Lovecraft.sentences,
  tags: Faker::Lovecraft.words,
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525314760/mcd1i4gz114roavab1n7.jpg"),
  location: "1-11 James St, Fitzroy VIC 3065",
  latitude: "-37.804052",
  longitude: "144.977102",
  title: Faker::Book.title,
  description: Faker::Lovecraft.sentences,
  tags: Faker::Lovecraft.words,
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525314786/cooah0gqpo4ffasy9ecn.jpg"),
  location: "37-41 Grattan Pl, Carlton VIC 3053",
  latitude: "-37.801472",
  longitude: "144.965722",
  title: Faker::Book.title,
  description: Faker::Lovecraft.sentences,
  tags: Faker::Lovecraft.words,
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525314814/o6vtacxmj72zapnoi5hz.jpg"),
  location: "Union Ln, Melbourne VIC 3000",
  latitude: "-37.814289",
  longitude: "144.964734",
  title: Faker::Book.title,
  description: Faker::Lovecraft.sentences,
  tags: Faker::Lovecraft.words,
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525314846/dijsbrnagqbodaivlffy.jpg"),
  location: "Caledonian Ln, Melbourne VIC 3000",
  latitude: "-37.812183",
  longitude: "144.964525",
  title: Faker::Book.title,
  description: Faker::Lovecraft.sentences,
  tags: Faker::Lovecraft.words,
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525314882/y1sbxt1fu6soptgqjnpz.jpg"),
  location: "22 Singleton St, Collingwood VIC 3066",
  latitude: "-37.804193",
  longitude: "144.987690",
  title: Faker::Book.title,
  description: Faker::Lovecraft.sentences,
  tags: Faker::Lovecraft.words,
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525314923/viaeclsmjhhwl7pnnacb.jpg"),
  location: "69-1 Fawkner St, St Kilda VIC 3182",
  latitude: "-37.865094",
  longitude: "144.980262",
  title: Faker::Book.title,
  description: Faker::Lovecraft.sentences,
  tags: Faker::Lovecraft.words,
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525314951/frjl5kl7iy8sddqozzf6.jpg"),
  location: "91 Nimmo St, Middle Park VIC 3206",
  latitude: "-37.852144",
  longitude: "144.960605",
  title: Faker::Book.title,
  description: Faker::Lovecraft.sentences,
  tags: Faker::Lovecraft.words,
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525314982/dpupxgomcvcsxpi21awj.jpg"),
  location: "55 Dando St, Cremorne VIC 3121",
  latitude: "-37.823892",
  longitude: "144.995319",
  title: Faker::Book.title,
  description: Faker::Lovecraft.sentences,
  tags: Faker::Lovecraft.words,
  user_id: 1,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

# art = Art.new(
#   photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525315027/drpwt5njmy0wdtdb9j39.jpg"),
#   location: "",
#   latitude: "",
#   longitude: "",
#   title: Faker::Book.title,
#   description: Faker::Lovecraft.sentences,
#   tags: Faker::Lovecraft.words,
#   user_id: 1,
#   artist_id: my_artist.sample,
#   )
# art.save!
# art.liked_by User.find(1)
# art.liked_by User.find(3)
# art.liked_by User.find(4)

# art = Art.new(
#   photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525315054/pyvo3b3vt7qhwpcfh6pk.jpg"),
#   location: "",
#   latitude: "",
#   longitude: "",
#   title: Faker::Book.title,
#   description: Faker::Lovecraft.sentences,
#   tags: Faker::Lovecraft.words,
#   user_id: 1,
#   artist_id: my_artist.sample,
#   )
# art.save!
# art.liked_by User.find(1)
# art.liked_by User.find(3)
# art.liked_by User.find(4)

# art = Art.new(
#   photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525315085/cyegeyar07qs3bqqimai.jpg"),
#   location: "",
#   latitude: "",
#   longitude: "",
#   title: Faker::Book.title,
#   description: Faker::Lovecraft.sentences,
#   tags: Faker::Lovecraft.words,
#   user_id: 1,
#   artist_id: my_artist.sample,
#   )
# art.save!
# art.liked_by User.find(1)
# art.liked_by User.find(3)
# art.liked_by User.find(4)

# art = Art.new(
#   photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525315118/bqoqnmnwrd4xsbh9flks.jpg"),
#   location: "",
#   latitude: "",
#   longitude: "",
#   title: Faker::Book.title,
#   description: Faker::Lovecraft.sentences,
#   tags: Faker::Lovecraft.words,
#   user_id: 1,
#   artist_id: my_artist.sample,
#   )
# art.save!
# art.liked_by User.find(1)
# art.liked_by User.find(3)
# art.liked_by User.find(4)

# art = Art.new(
#   photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525315154/hdygigwzlvcmu0en6b6a.jpg"),
#   location: "",
#   latitude: "",
#   longitude: "",
#   title: Faker::Book.title,
#   description: Faker::Lovecraft.sentences,
#   tags: Faker::Lovecraft.words,
#   user_id: 1,
#   artist_id: my_artist.sample,
#   )
# art.save!
# art.liked_by User.find(1)
# art.liked_by User.find(3)
# art.liked_by User.find(4)

# art = Art.new(
#   photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525315182/swc3uqeiuwzgg2nnjnwf.jpg"),
#   location: "",
#   latitude: "",
#   longitude: "",
#   title: Faker::Book.title,
#   description: Faker::Lovecraft.sentences,
#   tags: Faker::Lovecraft.words,
#   user_id: 1,
#   artist_id: my_artist.sample,
#   )
# art.save!
# art.liked_by User.find(1)
# art.liked_by User.find(3)
# art.liked_by User.find(4)

# art = Art.new(
#   photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525315214/se85lybl64oxudzhjgyz.jpg"),
#   location: "",
#   latitude: "",
#   longitude: "",
#   title: Faker::Book.title,
#   description: Faker::Lovecraft.sentences,
#   tags: Faker::Lovecraft.words,
#   user_id: 1,
#   )
# art.save!
# art.liked_by User.find(1)
# art.liked_by User.find(3)
# art.liked_by User.find(4)

# art = Art.new(
#   photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525315241/qttzpu3blmkqnnye0uqb.jpg"),
#   location: "",
#   latitude: "",
#   longitude: "",
#   title: Faker::Book.title,
#   description: Faker::Lovecraft.sentences,
#   tags: Faker::Lovecraft.words,
#   user_id: 1,
#   artist_id: my_artist.sample,
#   )
# art.save!
# art.liked_by User.find(1)
# art.liked_by User.find(3)
# art.liked_by User.find(4)

# art = Art.new(
#   photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525315276/jpdslfugvgnbg7eahevr.jpg"),
#   location: "",
#   latitude: "",
#   longitude: "",
#   title: Faker::Book.title,
#   description: Faker::Lovecraft.sentences,
#   tags: Faker::Lovecraft.words,
#   user_id: 1,
#   artist_id: my_artist.sample,
#   )
# art.save!
# art.liked_by User.find(1)
# art.liked_by User.find(3)
# art.liked_by User.find(4)

# art = Art.new(
#   photo: open("http://res.cloudinary.com/trembylene/image/upload/v1525315307/fxwcu2wfspeekhd5jvqt.jpg"),
#   location: "",
#   latitude: "",
#   longitude: "",
#   title: Faker::Book.title,
#   description: Faker::Lovecraft.sentences,
#   tags: Faker::Lovecraft.words,
#   user_id: 1,
#   artist_id: my_artist.sample,
#   )
# art.save!
# art.liked_by User.find(1)
# art.liked_by User.find(3)
# art.liked_by User.find(4)


puts "Finished! You now have art!"
