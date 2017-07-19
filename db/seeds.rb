# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@user = User.create(email: "sample@gmail.com", 
										password: "asdfasdf", 
										password_confirmation: "asdfasdf", 
										first_name: "Dallin", 
										last_name: "Johnson",
										phone: "8014555583")

puts "1 User created"

@amin_user = AdminUser.create(email: "admin@gmail.com", 
									password: "asdfasdf", 
									password_confirmation: "asdfasdf", 
									first_name: "Admin", 
									last_name: "User",
									phone: "8014555583")

puts "1 Admin User created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 Audit logs have been created"



