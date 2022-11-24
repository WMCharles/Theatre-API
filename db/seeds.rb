# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Production.destroy_all 
CrewMember.destroy_all

Production.create([
    {title: "Carmen", genre: "Opera", budget: 80000, image: "https://www.mensjournal.com/wp-content/uploads/mf/_main2_conor_0.jpg?w=900&quality=86&strip=all", director: "Dana White", ongoing:true},
    {title: "Cats", genre: "Musical", budget: 50000, image: "https://www.mensjournal.com/wp-content/uploads/mf/_main2_conor_0.jpg?w=900&quality=86&strip=all", director: "Dana White", ongoing: false},
    {title: "Hamilton", genre: "Musical", budget: 100000, image: "https://www.mensjournal.com/wp-content/uploads/mf/_main2_conor_0.jpg?w=900&quality=86&strip=all", director: "Dana White", ongoing: true},
    {title: "Hamlet", genre: "Shakespearean", budget: 70000, image: "https://www.mensjournal.com/wp-content/uploads/mf/_main2_conor_0.jpg?w=900&quality=86&strip=all", director: "Dana White", ongoing:false}
])

30.times{CrewMember.create(name:Faker::Name.name, job_title:'fighter', salary: 65000, production:Production.all.sample)}