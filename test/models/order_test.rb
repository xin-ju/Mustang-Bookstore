# == Schema Information
#
# Table name: orders
#
#  id                 :bigint           not null, primary key
#  credit_card_number :string
#  email              :string
#  exp_month          :integer
#  exp_year           :integer
#  security_code      :integer
#  total              :float
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "fixtures are valid" do    
    orders.each do |o|
      assert o.valid?, o.errors.full_messages.inspect
    end
  end  



  test "email presence not valid" do
    o = orders(:one)
    o.email = nil
    assert_not o.valid?
    o.email = ""
    assert_not o.valid?
  end

  test "security_code presence not valid" do
    o = orders(:one)
    o.security_code = nil
    assert_not o.valid?
    o.security_code = ""
    assert_not o.valid?
  end

  test "credit_card_number presence not valid" do
    o = orders(:one)
    o.credit_card_number = nil
    assert_not o.valid?
    o.credit_card_number = ""
    assert_not o.valid?
  end

  # test "exp_date presence not valid" do
  #   o = orders(:one)
  #   o.exp_date = nil
  #   assert_not o.valid?
  #   o.exp_date = ""
  #   assert_not o.valid?
  # end

  test "exp_month presence not valid" do
    o = orders(:one)
    o.exp_month = nil
    assert_not o.valid?
    o.exp_month = ""
    assert_not o.valid?
  end

  test "exp_year presence not valid" do
    o = orders(:one)
    o.exp_year = nil
    assert_not o.valid?
    o.exp_year= ""
    assert_not o.valid?
  end

  test "card_must_be_current" do
    o = orders(:one)
    o.exp_year = Date.today.year
    o.exp_month = Date.today.month - 1
    assert_not o.valid?
  end


  test "credit_card_number_must_have_at_least_13_digits" do
    o = orders(:one)
    o.credit_card_number = 'xxxxxx'
    #o.credit_card_number.length < 13
    assert_not o.valid?

    o = orders(:one)
    o.credit_card_number = 'xxxxx'
    #o.credit_card_number.scan(/\D/).empty? == false
    assert_not o.valid?
  end

  test "security_code_must_have_3_digits" do
    o = orders(:one)
    o.security_code.to_s.length != 3
    assert_not o.valid?

    o = orders(:one)
    o.security_code = "xxx"
    #o.security_code.to_s.scan(/\D/).empty? == false 
    assert_not o.valid?
  end


end
