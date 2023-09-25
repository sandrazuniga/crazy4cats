# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new(email: 'sandrazuniga.dg@gmail.com', password: '123456')
user.save

Raza.create([
                {nombre: 'Birmano', description: 'Amoroso', personalidad: 'Amigable', tamano: 'Mediano', pelaje: 'Mediano'},
                {nombre: 'Siames', description: 'Exotico', personalidad: 'Gracioso', tamano: 'Mediano', pelaje: 'Corto'},
                {nombre: 'Persa', description: 'Popular', personalidad: 'Malhumorado', tamano: 'Mediano', pelaje: 'Largo'}
            ])
