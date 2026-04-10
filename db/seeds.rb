puts "Cleaning database"

Stage.destroy_all
Project.destroy_all

puts "#{Project.count} projects remaining in DB."

ganba = Project.create!(
  title: "GanbaAI",
  description: "An AI-driven JLPT practice test generator",
  link: "https://github.com/kwood6319/GanbaAi",
  skills: ["Rails", "Stimulus", "SCSS", "HTML", "PostgreSQL", "Gemini", "Cloudinary", "Wicked"],
  team_size: 4,
  role: ""
)

Stage.create!(
  title: "Design",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: ganba
)

Stage.create!(
  title: "Schema",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: ganba
)

Stage.create!(
  title: "Wireframing",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: ganba
)

Stage.create!(
  title: "Development",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: ganba
)

Stage.create!(
  title: "Testing",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: ganba
)

Stage.create!(
  title: "Future Changes",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: ganba
)

puts "Created #{ganba.title} project"

connect = Project.create!(
  title: "connectPet",
  description: "A pet health management application",
  link: "https://github.com/kwood6319/connectPet",
  skills: ["Rails", "Stimulus", "SCSS", "HTML", "PostgreSQL", "Gemini", "Cloudinary"],
  team_size: 4,
  role: "Presenter | Backend Lead"
)

Stage.create!(
  title: "Design",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: connect
)

Stage.create!(
  title: "Schema",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: connect
)

Stage.create!(
  title: "Wireframing",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: connect
)

Stage.create!(
  title: "Development",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: connect
)

Stage.create!(
  title: "Testing",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: connect
)

Stage.create!(
  title: "Future Changes",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: connect
)

puts "Created #{connect.title} project"

library = Project.create!(
  title: "Classroom Library",
  description: "A management application for small libraries",
  link: "https://github.com/kwood6319/ClassroomLibrary",
  skills: ["Rails", "SCSS", "HTML", "PostgreSQL"],
  team_size: 1,
  role: "Full-Stack Engineer"
)

Stage.create!(
  title: "Design",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: library
)

Stage.create!(
  title: "Schema",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: library
)

Stage.create!(
  title: "Wireframing",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: library
)

Stage.create!(
  title: "Development",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: library
)

Stage.create!(
  title: "Testing",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: library
)

Stage.create!(
  title: "Future Changes",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: library
)

puts "Created #{library.title} project"

match = Project.create!(
  title: "KiFor Match",
  description: "Matching charity needs with donor items",
  link: "https://github.com/kwood6319/kifor-match",
  skills: ["Rails", "SCSS", "HTML", "PostgreSQL"],
  team_size: 5,
  role: "Lead Dev"
)

Stage.create!(
  title: "Design",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: match
)

Stage.create!(
  title: "Schema",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: match
)

Stage.create!(
  title: "Wireframing",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: match
)

Stage.create!(
  title: "Development",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: match
)

Stage.create!(
  title: "Testing",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: match
)

Stage.create!(
  title: "Future Changes",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  project: match
)

puts "Created #{match.title} project"


# library = Project.create!(
#   title: "",
#   description: "",
#   link: "",
#   skills: []
# )

#  Stage.create!(
#   title: "",
#   description: "",
#   project:
# )
