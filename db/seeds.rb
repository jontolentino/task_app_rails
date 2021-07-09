# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([
    {
        name: "All"
    },
    {
        name: "School"
    },
    {
        name: "Work"
    },
    {
        name: "Avionschool"
    },
    {
        name: "Sidelines"
    },
    {
        name: "Grocery"
    }
])

tasks = Task.create([
    {
        name: "Math algebra assignment",
        category: categories.second
    },
    {
        name: "Math exercise at page 12",
        category: categories.second
    },
    {
        name: "Buy carrots 12 pieces",
        category: categories.second
    },
    {
        name: "Buy 1/2 kilo brown sugar",
        category: categories.second
    },
    {
        name: "add candy to grocery jar",
        category: categories.second
    },
    {
        name: "ruby journal project",
        category: categories.second
    },
    {
        name: "deploy rails to heroku",
        category: categories.second
    },
    {
        name: "add users to task app",
        category: categories.second
    }
])
