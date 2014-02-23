# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
advertising_and_marketing = Category.create name: 'Advertising and Marketing'
audio_and_media = Category.create name: 'Audio and Media'
finance_payments_and_ecommerce = Category.create name: 'Finance, Payments and Ecommerce'
education = Category.create name: 'Education'
fashion = Category.create name: 'Fashion'
gaming = Category.create name: 'Gaming'
travel_and_transport = Category.create name: 'Travel and Transport'
social_networking = Category.create name: 'Social Networking'