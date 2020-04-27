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
class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy
    has_many :cart_items, dependent: :destroy
end
