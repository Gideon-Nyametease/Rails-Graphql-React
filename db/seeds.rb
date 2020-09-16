# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 2.times do
#     user = User.create(username: Faker::Name.first_name , email: Faker::Internet.email )
#     2.times do
#         user.contacts.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name ,
#                              phone_number: Faker::PhoneNumber.cell_phone ,email: Faker::Internet.email,
#                              twitter: Faker::Twitter.screen_name)
#     end 
# end

    # 2.times do
    #     contact = Contact.create(user_id: 5, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name ,
    #                              phone_number: Faker::PhoneNumber.cell_phone ,email: Faker::Internet.email,
    #                              twitter: Faker::Twitter.screen_name)
    #     3.times do
    #         contact.contact_extra_numbers.create( phone_number: Faker::PhoneNumber.cell_phone )
    #     end
    #     3.times do
    #         contact.contact_extra_emails.create( email: Faker::Internet.email )
    #     end
    # end