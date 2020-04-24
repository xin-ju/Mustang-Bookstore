# == Schema Information
#
# Table name: wishlists
#
#  id         :bigint           not null, primary key
#  is_empty   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Wishlist < ApplicationRecord
    has_many :wishlist_items, dependent: :destroy
    belongs_to :user
end
