# == Schema Information
#
# Table name: cart_items
#
#  id         :bigint           not null, primary key
#  quantity   :integer
#  total      :decimal(, )
#  unit_price :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  book_id    :bigint
#  cart_id    :bigint
#  order_id   :bigint
#
# Indexes
#
#  index_cart_items_on_book_id   (book_id)
#  index_cart_items_on_cart_id   (cart_id)
#  index_cart_items_on_order_id  (order_id)
#
# Foreign Keys
#
#  fk_rails_...  (book_id => books.id)
#  fk_rails_...  (cart_id => carts.id)
#  fk_rails_...  (order_id => orders.id)
#
class CartItem < ApplicationRecord
#validates :integer, presence: true
validates :quantity, presence: true

    belongs_to :cart, optional: true
    belongs_to :book, optional: true
    belongs_to :order, optional: true

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

# Added "optional: true" in order for fixture validations to pass muster
# Otherwise error: ["Cart must exist", "Book must exist"] shows in terminal
# if rails test is run with belongs_to :cart and belongs_to :book only
