require 'test_helper'

class UserTest < ActiveSupport::TestCase
 test "a user should enter a first name" do
 	user = User.name
 	assert !user.save
 	assert !user.errors[:first_name].empty?

 end

 test "a user should enter a last name" do
 	user = User.name
 	assert !user.save
 	assert !user.errors[:last_name].empty?

 end

 test "a user should enter a profile name" do
 	user = User.name
 	assert !user.save
 	assert !user.errors[:profile_name].empty?

 end

 test "a user should have a unique profile name" do
 	user = User.name
 	user.profile_name = "hex23p"
 	user.email_address = "hex23p@gmail.com"
 	user.first_name = "Philip"
 	user.last_name = "lilliefelth"
 	user.password = "pml101180"
 	user.password_confirmation = "pml101180"
 	assert !user.save
 	assert !user.errors[:profile_name].empty?

 end
end
