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
require 'test_helper'

class CartItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "fixtures are valid" do
    cart_items.each do |c|
      assert c.valid?, c.errors.full_messages.inspect
    end  
  end
  test "integer presence not valid" do
    q = cart_items(:one)
    q.integer= nil
    assert_not q.valid?
    q.integer = ""
    assert_not q.valid?
end
test "quantity presence not valid" do
  q = cart_items(:one)
  q.quantity= nil
  assert_not q.valid?
  q.quantity = ""
  assert_not q.valid?
end
end

