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
  description: "Our concept for this project was to use Generative AI to help students who are struggling with passing the JLPT.
    For passing a test, the best method is to take as many tests as possible. Unfortunately, it's difficult to keep track of how you're doing in each section.
    We wanted to help all of those studying Japanese.",
  project: ganba
)

Stage.create!(
  title: "Schema",
  description: "We only had two weeks to make this project so we focused on a simple structure.
    There would be a test with multiple questions (10 per test) separated into categories of Kanji, Vocabulary, Grammar, and Reading.
    In our schema we have decks and generated writing, but we didn't get around to implementing them.",
  project: ganba
)

Stage.create!(
  title: "Wireframing",
  description: "We wanted to focus on a clear user experience with links.",
  project: ganba
)

Stage.create!(
  title: "Development",
  description: "Despite the short length of time we had, we managed to get a lot done.
    We made it so that users can generate their own tests based on a certain level of the JLPT and their chosen category.
    The AI would generate these questions and store the answers.",
  project: ganba
)

# Stage.create!(
#   title: "Testing",
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
#   project: ganba
# )

Stage.create!(
  title: "Future Changes",
  description: "We will be working on this project some more in the future.
    We want to make a more robust database for generating tests.
    We want to make it so that users can practice as much as they might need.",
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
  description: "As a person with three pets in Japan, there are many difficulties. First, keeping track of what is happening with each of them.
    I'm fortunate that my cats don't need to take medicine but I do need to keep track of when my cats go to the toilet and have stomach issues.
    I needed a way to collate all of this data with accurate timestamps and be able to send it to my vet so I don't have to explain everything myself.
    I speak Japanese but medical Japanese is another story.",
  project: connect
)

Stage.create!(
  title: "Schema",
  description: "It was my first time designing such a complicated schema. We needed to have two different types of users; the owners and the vets.
    Each owner might have multiple pets. Then, each pet might have multiple things they need to keep track of.
    Though it isn't very scalable, we decided to add attributes to the pet database in order to make it in time for our MVP presentation.
    We also added a chat feature and for that to work, we added a chat and messages section to our schema. Each message will be saved to the database.",
  project: connect
)

Stage.create!(
  title: "Wireframing",
  description: "I'm not particularly good at front-end design and we only had a day to work on this, but we did our best to wireframe our app.
    Though the final app looked a lot different, it helped to give us an idea of what to create for our app.
    We later decided we didn't like the amount of colours -- it didn't lead to a professional looking app.",
  project: connect
)

Stage.create!(
  title: "Development",
  description: "We worked on the project from Feb 8th to March 13th. A total of 362 commits were made to the project. It was tiring but well worth it.
    We faced several challenges -- we had to make several migrations to our database because we hadn't considered some things.
    We had an issue with our data not exporting properly in Japanese. I also had to struggle a lot with the chat feature and using JavaScript.",
  project: connect
)

Stage.create!(
  title: "Testing",
  description: "Though the project works well for the one user, other users and vets don't see the expected behaviour.
    Considering we only had so much development time, it's inevitable for these things to happen.",
  project: connect
)

Stage.create!(
  title: "Future Changes",
  description: "In the near future, I'm going to continue working on this project with my group mates and two more members.
    We're going to work out the kinks and get the app ready for production.",
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
  description: "The concept for this project is allowing small schools or classes to keep track of their books when they loan them to students.
    Reading is a great way to encourage and develop students' language ability, so we should do whatever we can do to make books more accessible.",
  project: library
)

Stage.create!(
  title: "Schema",
  description: "The schema itself is simple. The real USP of this project is its adaptability to different classrooms.",
  project: library
)

Stage.create!(
  title: "Wireframing",
  description: "Since this application may be used on desktop or (more likely) a tablet, it was important to have a landscape design.
    It was important that the currently checked out books are visible on all pages.",
  project: library
)

Stage.create!(
  title: "Development",
  description: "This project is still under development.
  I am aiming to finish the CRUD actions and then implement barcode scanning to make it easier for loans and returns.",
  project: library
)

# Stage.create!(
#   title: "Testing",
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
#   project: library
# )

# Stage.create!(
#   title: "Future Changes",
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
#   project: library
# )

puts "Created #{library.title} project"

match = Project.create!(
  title: "KiFor Match",
  description: "Matching charity needs with donor items",
  link: "https://github.com/kwood6319/kifor-match",
  skills: ["Rails", "SCSS", "HTML", "PostgreSQL"],
  team_size: 5,
  role: "Lead Dev | Frontend Lead"
)

# Stage.create!(
#   title: "Design",
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
#   project: match
# )

Stage.create!(
  title: "Schema",
  description: "We have two types of users, charities who request things, and donors who offer items for the request.",
  project: match
)

Stage.create!(
  title: "Wireframing",
  description: "This app is desktop-first so the design is landscape.
    I used the colours and themes from the company's logo.",
  project: match
)

Stage.create!(
  title: "Development",
  description: "We are currently under development. We're still working on our controllers and models.",
  project: match
)

# Stage.create!(
#   title: "Testing",
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
#   project: match
# )

# Stage.create!(
#   title: "Future Changes",
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
#   project: match
# )

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
