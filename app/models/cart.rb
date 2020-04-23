# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  is_empty   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Cart < ApplicationRecord

validates :is_empty, inclusion: { in: [true, false] }
    has_many:cart_items, dependent: :destroy
end
