# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  admin                  :boolean          default(FALSE)
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
test "fixtures are valid" do
  users.each do |u|
    assert u.valid?, u.errors.full_messages.inspect
  end  
end
test "encrypted_password presence not valid" do
  u = users(:one)
  u.encrypted_password= nil
  assert_not u.valid?
  u.encrypted_password = ""
  assert_not u.valid?
end
test "username presence not valid" do
  u = users(:one)
  u.username= nil
  assert_not u.valid?
  u.username = ""
  assert_not u.valid?
end
test "email presence not valid" do
  u = users(:one)
  u.email= nil
  assert_not u.valid?
  u.email = ""
  assert_not u.valid?
end
test "admin presence not valid" do
  u = users(:one)
  u.admin= nil
  assert_not u.valid?
  u.admin = ""
  assert_not u.valid?
end
test "email uniqueness not valid" do
  one = users(:one)
  two = users(:two)
  one.email = two.email
  assert_not one.valid?
end
end


