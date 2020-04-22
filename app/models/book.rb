# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  author     :string
#  genre      :string
#  image      :string
#  overview   :string
#  price      :float
#  rating     :float
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Book < ApplicationRecord
#<<<<<<< iss25
    has_many:cart_items, dependent: :destroy
#=======
#>>>>>>> master
end
