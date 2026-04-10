puts "Cleaning database"

Project.destroy_all

puts "#{Project.count} projects remaining in DB"

ganba = Project.create!(
  title: "GanbaAI",
  description: "An AI-driven JLPT practice test generator",
  link: "https://github.com/kwood6319/GanbaAi",
  skills: ["Rails", "Stimulus", "SCSS", "HTML", "PostgreSQL", "Gemini", "Cloudinary", "Wicked"]
)

puts "Created #{ganba.title} project"

connect = Project.create!(
  title: "connectPet",
  description: "A pet health management application",
  link: "https://github.com/kwood6319/connectPet",
  skills: ["Rails", "Stimulus", "SCSS", "HTML", "PostgreSQL", "Gemini", "Cloudinary"]
)

puts "Created #{connect.title} project"

library = Project.create!(
  title: "Classroom Library",
  description: "A management application for small libraries",
  link: "https://github.com/kwood6319/ClassroomLibrary",
  skills: ["Rails", "SCSS", "HTML", "PostgreSQL"]
)

puts "Created #{library.title} project"

match = Project.create!(
  title: "KiFor Match",
  description: "Matching charity needs with donor items",
  link: "https://github.com/kwood6319/kifor-match",
  skills: ["Rails", "SCSS", "HTML", "PostgreSQL"]
)

puts "Created #{match.title} project"


# library = Project.create!(
#   title: "",
#   description: "",
#   link: "",
#   skills: []
# )
