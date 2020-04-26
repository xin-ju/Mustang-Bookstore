# == Schema Information
#
# Table name: orders
#
#  id                 :bigint           not null, primary key
#  buyer_name         :string
#  credit_card_number :string
#  exp_date           :date
#  security_code      :integer
#  shipping_state     :string
#  shipping_street    :string
#  shipping_zip       :bigint
#  total              :float
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
