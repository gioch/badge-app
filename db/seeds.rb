# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_user = User.new
admin_user.email = 'admin@mail.com'
admin_user.password = 'qwerasdf'
admin_user.name = 'George'
admin_user.second_name = 'Chkhvirkia'
admin_user.admin = 1
admin_user.save

user = User.new
user.email = 'user@mail.com'
user.password = 'qwerasdf'
user.name = 'Steve'
user.second_name = 'Jobs'
user.save
