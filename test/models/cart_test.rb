# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  total      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class CartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "fixtures are valid" do
    carts.each do |c|
      assert c.valid?, c.errors.full_messages.inspect
    end  
  end
  test "is_empty presence not valid" do
    c = carts(:one)
    c.is_empty= nil
    assert_not c.valid?
    c.is_empty = ""
    assert_not c.valid?
  end

end

