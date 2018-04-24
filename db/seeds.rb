puts "Cleaning database"
Supporter.destroy_all
Art.destroy_all

puts "Creating fake art..."

art = Art.new(
  photo: open("https://res.cloudinary.com/trembylene/image/upload/v1524553461/graffiti1-min.png"),
  location: "Flinders Court, Melbourne",
  title: Faker::Book.title,
  description: "This work is a brilliantly colored, domestic site-specific installation consisting of familiar images which is reminiscent of an image of aspirational wealth. The work deploys race, class, and technology as a signifier of power structures.",
  tags: "colourful",
  user_id: 1,
  )
art.save!

art = Art.new(
  photo: open("https://res.cloudinary.com/trembylene/image/upload/v1524553461/graffiti2-min.png"),
  location: "122 Albert St, Port Melbourne",
  title: Faker::Book.title,
  description: "This work is a part landscape, part abstraction, environmental truncated history painting consisting of a United Nations scientist who has washed ashore after the world’s last nuclear battle which is reminiscent of formal precision and tenderness. The work deploys domestic spaces as labor-intensive processes.",
  tags: "colourful",
  user_id: 1,
  )
art.save!

art = Art.new(
  photo: open("https://res.cloudinary.com/trembylene/image/upload/v1524553461/graffiti3-min.png"),
  location: "99 Beacon Rd, Port Melbourne",
  title: Faker::Book.title,
  description: "This work is an erasure-inducing, religious precisely outlined areas of flat color consisting of a multi-channel sound and video installation which is reminiscent of waterfront pleasure palaces. The work deploys concurrently edited materials as subverting the traditional subject/object relationship.",
  tags: "urban",
  user_id: 1,
  )
art.save!

art = Art.new(
  photo: open("https://res.cloudinary.com/trembylene/image/upload/v1524553461/graffiti5-min.png"),
  location: "396 Clarendon St, South Melbourne",
  title: Faker::Book.title,
  description: "This work is an industrial, painterly hallucinatory montage consisting of uncanny performance of media narrative as childlike theater which is reminiscent of the soft, flaccid forms of upholstered furniture. The work deploys the interrogation of the semiotics of the object as lived histories and symbolic alternatives.",
  tags: "urban",
  user_id: 1,
  )
art.save!

art = Art.new(
  photo: open("https://res.cloudinary.com/trembylene/image/upload/v1524553461/graffiti4-min.png"),
  location: "177 Cecil St, South Melbourne",
  title: Faker::Book.title,
  description: "This work is an intimate and estranging, spiritual set of larger-than-life octopus consisting of silhouetted figures which is reminiscent of invented spaces. The work deploys archetypes as pointing out discomfort about otherness.",
  tags: "tentacle",
  user_id: 1,
  )
art.save!

puts "Finished! You now have art!"
