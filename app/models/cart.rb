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
    has_many:cart_items, dependent: :destroy
end
