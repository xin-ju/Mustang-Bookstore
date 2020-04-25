# == Schema Information
#
# Table name: wishlist_items
#
#  id          :bigint           not null, primary key
#  quantity    :integer
#  total       :decimal(, )
#  unit_price  :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  book_id     :bigint
#  wishlist_id :bigint
#
# Indexes
#
#  index_wishlist_items_on_book_id      (book_id)
#  index_wishlist_items_on_wishlist_id  (wishlist_id)
#
# Foreign Keys
#
#  fk_rails_...  (book_id => books.id)
#  fk_rails_...  (wishlist_id => wishlists.id)
#
class WishlistItem < ApplicationRecord
    validates :quantity, presence: true

    belongs_to :wishlist, optional: true
    belongs_to :book, optional: true

    before_save :set_unit_price
    before_save :set_total

    def unit_price
        if persisted?
            self[:unit_price]
        else
            book.price
        end
    end

    def total
        unit_price * quantity
    end

    private

    def set_unit_price
        self[:unit_price] = unit_price
    end

    def set_total
        self[:total] = total * quantity
    end
 
    
end
