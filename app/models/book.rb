# == Schema Information
#
# Table name: books
#
#  id          :bigint           not null, primary key
#  assetlabel  :string
#  author      :string
#  book_format :string
#  genre       :string
#  image       :string
#  overview    :string
#  price       :float
#  rating      :float
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Book < ApplicationRecord
    validates :author, presence: true
    validates :genre, presence: true
    validates :overview, presence: true, uniqueness: true
    validates :rating, presence: true
    validates :title, presence: true, uniqueness: true
    validates :price, presence: true


    has_many :cart_items, dependent: :destroy
    has_many :wishlist_items, dependent: :destroy
    has_many :order_items, dependent: :destroy
    
end
