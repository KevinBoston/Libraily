# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Libraries
Library.create(name: 'Central', location: 'New York')
Library.create(name: 'Memorial', location: 'New York')
Library.create(name: 'Resource', location: 'New York')
Library.create(name: 'Central', location: 'Los Angeles')
Library.create(name: 'West', location: 'Los Angeles')
Library.create(name: 'Empire', location: 'New York')
Library.create(name: 'Franklin', location: 'Boston')
Library.create(name: 'Central', location: 'Boston')
Library.create(name: 'Wamapoke Massacre Memorial', location: 'Pawnee')

#Books

Book.create(title:'The Last of the Mohicans', genre: 'Classic/American', borrowed: false, description: "A classic which needs no introduction.", library_id: Library.all.sample.id)
Book.create(title:'The Catcher in the Rye', genre: 'Classic/American', borrowed: false, description: "A classic which needs no introduction.", library_id: 1)
Book.create(title:'Huckleberry Finn', genre: 'Classic/American', borrowed: false, description: "A classic which needs no introduction.", library_id: 1)
Book.create(title:'The Scarlett Letter', genre: 'Classic/American', borrowed: false, description: "A classic which needs no introduction.", library_id: 1)
Book.create(title:'Twilight', genre: 'Classic/American', borrowed: false, description: "A classic which needs no introduction.", library_id: 1)
Book.create(title:'The Complete Works', genre: 'Shakespeare', borrowed: false, description: "The Bard's timeless library.", library_id: 1)
Book.create(title:'Intro to Thermonuclear Astrophysics', genre: 'Reference', borrowed: false, description: "For nerds.", library_id: 3)
Book.create(title:'Advanced Thermonuclear Astrophysics', genre: 'Reference', borrowed: false, description: "For Super nerds.", library_id: 3)
Book.create(title:'Intro to Physics', genre: 'Reference', borrowed: false, description: "For nerds.", library_id: 3)
Book.create(title:'Intro to Astrophysics', genre: 'Reference', borrowed: true, description: "For nerds.", library_id: 3)
Book.create(title:'Intro to Rails', genre: 'Reference', borrowed: false, description: "For the cool kids.", library_id: 3)
Book.create(title:'Advanced Rails Guide', genre: 'Reference', borrowed: false, description: "For nerds.", library_id: 3)
Book.create(title:'The Catcher in the Rye', genre: 'Classic/American', borrowed: false, description: "A classic which needs no introduction.", library_id: 2)
Book.create(title:'Huckleberry Finn', genre: 'Classic/American', borrowed: true, description: "A classic which needs no introduction.", library_id: 2)
Book.create(title:'Moby Dick', genre: 'Classic/American', borrowed: false, description: "A classic which needs no introduction.", library_id: 2)

#Pawnee seeds
User.create(first_name: 'Leslie', last_name: 'Knope-Wyatt', username: 'ParkQueen', location: 'Pawnee', bio: 'I love parks!', password: 'test', admin: true, email: 'lknope@pawnee.in.gov')
User.create(first_name: 'Andy', last_name: 'Dwyer', username: 'Bert_Macklin_FBI', location: 'Pawnee', bio: 'MOUSE RAT is the greates band of all time!', password: 'test', email: 'mrsnakehole@aol.com')
User.create(first_name: 'Ron', last_name: 'Redacted', username: 'LesVegetables', location: 'Pawnee', bio: 'What is this, the government?', password: 'test', email: 'rswanson@pawnee.in.gov')

Book.create(library_id: 9, title: 'The Joan Calamezo Story, loosly adapted from her Life', genre: 'Biography', borrowed: false, description: "Joan's fabulous life!")
Book.create(library_id: 9, title: 'Karate 101', genre: 'Reference', borrowed: false, description: 'How to learn basic Karate.')
Book.create(library_id: 9, title: 'Advanced Grassrooting: From Kentucky Bluegrass to Local Elections', genre: 'Reference', borrowed: false, description: 'A book about both grass and elections.')
Book.create(library_id: 9, title: 'Pawnee: The Greatest Town in America', genre: 'Classic/American', borrowed: false, description: 'Why Pawnee is the best.')
Book.create(library_id: 9, title: "The Time Traveler's Optometrist", genre: 'Classic/American', borrowed: false, description: 'A heart-warming story about a caveman eye doctor who travels to present day Cincinnati and can see everything but love. Unreadable.')
Book.create(library_id: 9, title: 'Organize It!', genre: 'Reference', borrowed: false, description: 'Basic business organization fundamentals.')
Book.create(library_id: 9, title: 'Oraganize It 2: Engage with Zorp', genre: 'Reference', borrowed: false, description: 'How to learn about Zorp.')
Book.create(library_id: 9, title: "Biden the Rails: 1001 Poems Inspired by My Travels Through Amtrak's Northeast Corridor", genre: 'Classic/American', borrowed: false, description: "Joe Biden's Book")
