# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  total      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Cart < ApplicationRecord

#validates :is_empty, inclusion: { in: [true, false] }
    has_many:cart_items, dependent: :destroy
    before_save :set_subtotal

    def subtotal
        cart_items.collect{|cart_item| cart_item.valid? ? cart_item.unit_price*cart_item.quantity : 0}.sum
    end



    private

    def set_subtotal
        self[:subtotal] = subtotal
    end
end
