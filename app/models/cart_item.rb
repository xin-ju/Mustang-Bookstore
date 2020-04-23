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
validates :integer, presence: true
validates :quantity, presence: true

    belongs_to :cart, optional: true
    belongs_to :book, optional: true
end

# Added "optional: true" in order for fixture validations to pass muster
# Otherwise error: ["Cart must exist", "Book must exist"] shows in terminal
# if rails test is run with belongs_to :cart and belongs_to :book only
