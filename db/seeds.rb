# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

RepairBill.create([{brand: "Fender", model: "Telecaster", year:"1987", style: "6-string", electric: true, acoustic: false}])
RepairBill.create([{brand: "Paul Reed Smith", model: "Dragon 2", year:"1993", style: "6-string", electric: true, acoustic: false}])
RepairBill.create([{brand: "Yamaha", model: "APX 600", year:"2018", style: "6-string", electric: true, acoustic: true}])
RepairBill.create([{brand: "Martin", model: "D-15M", year:"2008", style: "6-string", electric: false, acoustic: true}])
RepairBill.create([{brand: "Fender", model: "Precision Bass", year:"1994", style: "4-string", electric: true, acoustic: false}])