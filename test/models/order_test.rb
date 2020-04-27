# == Schema Information
#
# Table name: orders
#
#  id                 :bigint           not null, primary key
#  credit_card_number :string
#  email              :string
#  exp_date           :date
#  security_code      :integer
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
