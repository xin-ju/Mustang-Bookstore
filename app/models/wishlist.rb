# == Schema Information
#
# Table name: wishlists
#
#  id         :bigint           not null, primary key
#  subtotal   :decimal(, )
#  total      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Wishlist < ApplicationRecord
    has_many :wishlist_items, dependent: :destroy
    before_save :set_subtotal
   # belongs_to :user

    def subtotal
        wishlist_items.collect{|wishlist_item| wishlist_item.valid? ? wishlist_item.unit_price*wishlist_item.quantity : 0}.sum
    end

    private

    def set_subtotal
        self[:subtotal] = subtotal
    end
    
end
