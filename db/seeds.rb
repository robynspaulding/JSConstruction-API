# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

About.create(
  summary: "My name is Jordan Spaulding. I am the owner and operator of Jordan Spauldi
  ng Construction liscenced to work in California. I have been working...", 
  image_url: "https://ibb.co/S3Vx5MZ"
)

Portfolio.create(
    job_name: "Pomona Electrical Update", 
    description: "House had knob and tube wiring covered in blown-in insulation, I replaces all the old wiring with brand new electrical work, after first carefully removing the plaster and lathe walls without damage to the ceiling molding, then finished with drywalling, painting and cean-up.",
    image_url: "https://www.shutterstock.com/shutterstock/photos/1356624362/display_1500/stock-vector-home-renovation-concept-vector-illustration-for-wallpaper-background-banner-landing-page-flyer-1356624362.jpg"
  )

Woodshop.create(
  item: "Thick Cutting Board",
  description: "Made out of hard Walnut and Redwood, this thick cutting board is great for anything you need. With a 5cm juice groove and  water resistant surface this is a great counter board, and with its bold design will look great anywere its needes. Materials:____ Price $200 usd",
  image_url: "https://img.freepik.com/free-vector/wood-cutting-board-isolated_1284-41839.jpg?w=2000"
)