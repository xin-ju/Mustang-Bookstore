# == Schema Information
#
# Table name: orders
#
#  id                 :bigint           not null, primary key
#  billing_info       :string
#  buyer_name         :string
#  credit_card_number :integer
#  order_date         :string
#  order_number       :integer
#  shipping_info      :string
#  total              :float
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy
end
