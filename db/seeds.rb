# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movie = Movie.create({ name: 'Star Wars', 
    year: 1, description: 'こんにちは', 
    image_url: 'https://picsum.photos/id/237/200/300',
    is_showing: 1}, 
)

Movie.create( name: 'Lord of the Rings', 
    year: 2, description: 'おはようございます', 
    image_url: 'https://picsum.photos/id/237/200/300',
    is_showing: 0
)

15.times do |n|
    Sheet.create(
        column: n % 5 + 1,
        row: ('a'.ord + (n / 5)).chr
    )
end