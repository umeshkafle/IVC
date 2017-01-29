# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(name: :admin)
Role.create(name: :lecturer)
Role.create(name: :student)
user1 = User.create(username: 'Umesh',
								    email: 'kafleumesh@gmail.com',
								    password: 'Donotask1',
								    password_confirmation: 'Donotask1')
user1.add_role(:admin)
user2 = User.create(username: 'Rohit',
								    email: 'rohit@gmail.com',
								    password: 'lecturer1234',
								    password_confirmation: 'lecturer1234')
user2.add_role(:lecturer)

user3 = User.create(username: 'AnmolRaj',
									email: 'anmol@gmail.com',
								    password: 'student1234',
								    password_confirmation: 'student1234')
user3.add_role(:student)

									
	Course.create(name: "Employment Skills",
								 user: user2)
	Course.create(name: "Application Developments Notes",
								 user: user2)

