# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Alias.delete_all
Charge.delete_all
Fugitive.delete_all

santiago = Fugitive.create(image: "https://www.fbi.gov/wanted/topten/santiago-mederos/@@images/image/preview",
                            name: "Santiago Villalba Mederos",
                            height: "5’10”",
                            weight: "140 pounds",
                            race: "White (Hispanic)",
                            hair: "Black",
                            eyes: "Brown",
                            sex: "Male",
                            captured: "No")

Alias.create(name: "Pucho", fugitive: santiago)
Alias.create(name: "Stretch", fugitive: santiago)
Alias.create(name: "Santiago Mederes", fugitive: santiago)
Alias.create(name: "Santiago V. Mederos", fugitive: santiago)
Alias.create(name: "Santiago Villalva Mederos", fugitive: santiago)

Charge.create(name: "Unlawful Flight to Avoid Prosecution", fugitive: santiago)
Charge.create(name: "Murder in the First Degree", fugitive: santiago)
Charge.create(name: "Conspiracy to Commit Murder in the First Degree", fugitive: santiago)
Charge.create(name: "Unlawful Possession of a Firearm in the Second Degree", fugitive: santiago)
Charge.create(name: "Murder in the Second Degree", fugitive: santiago)


robert = Fugitive.create(image: "https://www.fbi.gov/wanted/topten/robert-william-fisher/@@images/image/preview",
                            name: "Robert William Fisher",
                            height: "6'0”",
                            weight: "190 pounds",
                            race: "White",
                            hair: "Brown",
                            eyes: "Blue",
                            sex: "Male",
                            captured: "No")

Alias.create(name: "Robert W. Fisher", fugitive: robert)

Charge.create(name: "Unlawful Flight to Avoid Prosecution - First Degree Murder", fugitive: robert)
Charge.create(name: "Arson of an Occupied Structure", fugitive: robert)



alejandro = Fugitive.create(image: "https://www.fbi.gov/wanted/topten/alejandro-castillo/@@images/image/preview",
                            name: "Alejandro Rosales Castillo",
                            height: "5’6”",
                            weight: "Approximately 180 to 190 pounds",
                            race: "White",
                            hair: "Black",
                            eyes: "Brown",
                            sex: "Male",
                            captured: "Yes")

Alias.create(name: "Alexandro Castillo", fugitive: alejandro)
Alias.create(name: "Alex Castillo", fugitive: alejandro)
Alias.create(name: "Alejandro Rosales", fugitive: alejandro)
Alias.create(name: "Alejandro Castillo", fugitive: alejandro)

Charge.create(name: "Unlawful Flight to Avoid Prosecution - Murder", fugitive: alejandro)
