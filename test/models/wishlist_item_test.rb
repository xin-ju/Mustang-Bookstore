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
require 'test_helper'

class WishlistItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
