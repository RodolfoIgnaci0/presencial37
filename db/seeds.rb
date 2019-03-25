# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'mi nombre')
proyecto = Project.create(name: 'proyecto')

10.times do |i|
 u = User.new(name: "Mi Nombre #{i + 1}")
 u.projects << proyecto
 u.save
end