# == Schema Information
#
# Table name: books
#
#  id               :bigint           not null, primary key
#  assetlabel       :string
#  author           :string
#  book_format      :string
#  genre            :string
#  image            :string
#  overview         :string
#  page_number      :integer
#  price            :float
#  publication_date :string
#  rating           :float
#  title            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
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
    has_one_attached :avatar
    #has_many :order_items, dependent: :destroy

    #order_items not added yet to project, needed to comment above line of code out to 
    #allow seller delete product function. Delete item should continue work once order_items is added
    acts_as_taggable_on :tags
    $genres = ['Mystery', 'Classic', 'Sci-Fi & Fantasy', 'Nonfiction']
    $authors = ["Jane Harper", "Tana French", "Tami Hoag", "Jane Austen", "Charles Dickens", "Frank Herbert","Louisa May Alcott", "Charlie Jane Anders", "Tami Hoag", "Leonard Goldberg", "Catherine Coulter", "Sarah J. Maas", "Ray Bradbury", "Silvia Moreno-Garcia","Erik Larson", "Yuval Noah Harari", "Patrick Radden Keefe", "Lori Gottlieb", "Adam Higginbotham"]
end








