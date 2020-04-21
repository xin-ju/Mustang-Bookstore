# == Schema Information
#
# Table name: cart_items
#
#  id         :bigint           not null, primary key
#  integer    :string
#  quantity   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  book_id    :bigint
#  cart_id    :bigint
#
# Indexes
#
#  index_cart_items_on_book_id  (book_id)
#  index_cart_items_on_cart_id  (cart_id)
#
# Foreign Keys
#
#  fk_rails_...  (book_id => books.id)
#  fk_rails_...  (cart_id => carts.id)
#
class CartItem < ApplicationRecord
    belongs_to :cart
    belongs_to :book
end
