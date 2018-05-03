puts "Cleaning database"
Supporter.destroy_all
Art.destroy_all

puts "Creating fake art..."

my_artist = [1, 2, 4, 6]
users = [1, 2, 3, 4, 5, 6, 7, 8]

art = Art.new(
  photo: open("https://res.cloudinary.com/trembylene/image/upload/v1524553461/graffiti1-min.png"),
  location: "Flinders Court, Melbourne",
  latitude: "-37.8176435",
  longitude: "144.96428979999996",
  title: Faker::Book.title,
  description: "This work is a brilliantly colored, domestic site-specific installation consisting of familiar images which is reminiscent of an image of aspirational wealth. The work deploys race, class, and technology as a signifier of power structures.",
  tags: "colourful historical",
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
  tags: "colourful dragon green",
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
  tags: "urban anime pink",
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
  tags: "urban visage face creep",
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
  tags: "tentacle red sea pop-culture",
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!

art = Art.new(
  photo: open("//res.cloudinary.com/trembylene/image/upload/v1525314494/amxgbwhd9b5rvpgeavms.jpg"),
  location: "120 King Street, Melbourne",
  latitude: "-37.817409",
  longitude: "144.956309",
  title: "Windows to the soul",
  description: "This work is a disembodied and disguised, religious performative sculpture consisting of re-purposed materials which is reminiscent of the performative dimension of language.",
  tags: "tree trunk rocks basketballs visage",
  user_id: users.sample,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("//res.cloudinary.com/trembylene/image/upload/v1525314663/y2ouvjqeeirzck7nusiq.jpg"),
  location: "34-18 Equitable Pl, Melbourne VIC 3000",
  latitude: "-37.815443",
  longitude: "144.963190",
  title: "The Princess",
  description: "This work is a minimal, biomorphic elevated platform consisting of a parklike respite from the tasks of viewing, judgment, and critique which is reminiscent of the subject-object hierarchy being destabilized. The work deploys monumental scale as the struggle to communicate.",
  tags: "crystals acetate lightbulbs colourful",
  user_id: users.sample,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("//res.cloudinary.com/trembylene/image/upload/v1525314760/mcd1i4gz114roavab1n7.jpg"),
  location: "1-11 James St, Fitzroy VIC 3065",
  latitude: "-37.804052",
  longitude: "144.977102",
  title: "The Kardashians",
  description: "This work is a visually pleasing, painterly set of sparse shots of traffic, figures, animals, and cityscapes consisting of social gaming which is reminiscent of collapsing boundaries between performance, sculpture, architecture, and documentation. The work deploys architecture as suggesting a ritual action.",
  tags: "amphlets automotive manuals embroidery floss laptops pop-culture censor",
  user_id: users.sample,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("//res.cloudinary.com/trembylene/image/upload/v1525314786/cooah0gqpo4ffasy9ecn.jpg"),
  location: "37-41 Grattan Pl, Carlton VIC 3053",
  latitude: "-37.801472",
  longitude: "144.965722",
  title: "The Other Side of Silence",
  description: "This work is a visually pleasing, sexuality-oriented series of words consisting of panoramas of present-day Tokyo and Beirut which is reminiscent of political climate rife with social and economic inequality. The work deploys experimental geography as unwelcome witnesses.",
  tags: "plaster clay basketballs blue red face visage",
  user_id: users.sample,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("//res.cloudinary.com/trembylene/image/upload/v1525314814/o6vtacxmj72zapnoi5hz.jpg"),
  location: "Union Ln, Melbourne VIC 3000",
  latitude: "-37.814289",
  longitude: "144.964734",
  title: "Girl on Blue",
  description: "This work is arestrained, conceptual voice emitted by speakers consisting of incendiary writing of punk musicians which is reminiscent of landscape and the body.",
  tags: "eBay-sourced figurines felt deck chair face blue pop-culture",
  user_id: users.sample,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("//res.cloudinary.com/trembylene/image/upload/v1525314846/dijsbrnagqbodaivlffy.jpg"),
  location: "Caledonian Ln, Melbourne VIC 3000",
  latitude: "-37.812183",
  longitude: "144.964525",
  title: "Spirit Animal",
  description: "This work is an inconspicuous, and emphatically un-heroic, kinetic hallucinatory montage consisting of silhouetted figures which is reminiscent of colonialist projections onto the rainforest. The work deploys images of dicks and motorcycle jackets as lived histories and symbolic alternatives.",
  tags: "voice encoder stock footage face pop-culture blue",
  user_id: users.sample,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("//res.cloudinary.com/trembylene/image/upload/v1525314882/y1sbxt1fu6soptgqjnpz.jpg"),
  location: "22 Singleton St, Collingwood VIC 3066",
  latitude: "-37.804193",
  longitude: "144.987690",
  title: "Coonabarabran",
  description: "This work is a visually pleasing, geometric chrome chameleon consisting of drab, cluttered office which is reminiscent of a state of anxiety and alarm. The work deploys instruments of communication, drops of blood, and surrogates for the human body as a dialectic between conflicting discourses of urbanism and ecology.",
  tags: "strangers rocks audio-visual equipment historical aboriginal child paint",
  user_id: 1,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("//res.cloudinary.com/trembylene/image/upload/v1525314923/viaeclsmjhhwl7pnnacb.jpg"),
  location: "69-1 Fawkner St, St Kilda VIC 3182",
  latitude: "-37.865094",
  longitude: "144.980262",
  title: "Sleep the Brave",
  description: "This work is a disembodied and disguised, urban set of six floor-to-ceiling windows consisting of re-purposed materials which is reminiscent of colonialist projections onto the rainforest. The work deploys natural disasters or political situations as emphasizing primal connections between nature and technology.",
  tags: "machete plastic lids iphones pink dream acid colourful pop-culture",
  user_id: users.sample,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("//res.cloudinary.com/trembylene/image/upload/v1525314951/frjl5kl7iy8sddqozzf6.jpg"),
  location: "91 Nimmo St, Middle Park VIC 3206",
  latitude: "-37.852144",
  longitude: "144.960605",
  title: "Colored Face",
  description: "This work is arestrained, didactic small collages from cut paper consisting of environments seemingly in conflict which is reminiscent of a state of anxiety and alarm. The work deploys obsessions with popular culture and video technologies as an allegorical figure for today’s political climate.",
  tags: "appropriated text paper lightbulbs colourful female woman face historical",
  user_id: users.sample,
  artist_id: my_artist.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

art = Art.new(
  photo: open("//res.cloudinary.com/trembylene/image/upload/v1525314982/dpupxgomcvcsxpi21awj.jpg"),
  location: "55 Dando St, Cremorne VIC 3121",
  latitude: "-37.823892",
  longitude: "144.995319",
  title: "Amazonia for Selling",
  description: "This work is an ornate, ironic framed view of hallucinatory realms consisting of rich textures and multilayered surfaces which is reminiscent of colonialist projections onto the rainforest. The work deploys the interrogation of the semiotics of the object as a dialectic between conflicting discourses of urbanism and ecology.",
  tags: "rotunda colored pencils earbuds amazonia blue child sleep historical",
  user_id: users.sample,
  )
art.save!
art.liked_by User.find(1)
art.liked_by User.find(2)
art.liked_by User.find(3)
art.liked_by User.find(4)

# art = Art.new(
#   photo: open("//res.cloudinary.com/trembylene/image/upload/v1525315027/drpwt5njmy0wdtdb9j39.jpg"),
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
#   photo: open("//res.cloudinary.com/trembylene/image/upload/v1525315054/pyvo3b3vt7qhwpcfh6pk.jpg"),
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
#   photo: open("//res.cloudinary.com/trembylene/image/upload/v1525315085/cyegeyar07qs3bqqimai.jpg"),
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
#   photo: open("//res.cloudinary.com/trembylene/image/upload/v1525315118/bqoqnmnwrd4xsbh9flks.jpg"),
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
#   photo: open("//res.cloudinary.com/trembylene/image/upload/v1525315154/hdygigwzlvcmu0en6b6a.jpg"),
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
#   photo: open("//res.cloudinary.com/trembylene/image/upload/v1525315182/swc3uqeiuwzgg2nnjnwf.jpg"),
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
#   photo: open("//res.cloudinary.com/trembylene/image/upload/v1525315214/se85lybl64oxudzhjgyz.jpg"),
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
#   photo: open("//res.cloudinary.com/trembylene/image/upload/v1525315241/qttzpu3blmkqnnye0uqb.jpg"),
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
#   photo: open("//res.cloudinary.com/trembylene/image/upload/v1525315276/jpdslfugvgnbg7eahevr.jpg"),
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
#   photo: open("//res.cloudinary.com/trembylene/image/upload/v1525315307/fxwcu2wfspeekhd5jvqt.jpg"),
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
