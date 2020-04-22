# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  author     :string
#  genre      :string
#  overview   :string
#  price      :float
#  rating     :float
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "fixtures are valid" do
    books.each do |q|
      assert q.valid?, q.errors.full_messages.inspect
    end  
  end

  test "title presence not valid" do
    q = books(:one)
    q.title = nil
    assert_not q.valid?
    q.title = ""
    assert_not q.valid?
end
test "author presence not valid" do
  q = books(:one)
  q.author = nil
  assert_not q.valid?
  q.author = ""
  assert_not q.valid?
end
test "genre presence not valid" do
  q = books(:one)
  q.genre = nil
  assert_not q.valid?
  q.genre= ""
  assert_not q.valid?
end
test "overview presence not valid" do
  q = books(:one)
  q.overview = nil
  assert_not q.valid?
  q.overview = ""
  assert_not q.valid?
end
test "price presence not valid" do
  q = books(:one)
  q.price = nil
  assert_not q.valid?
  q.price = ""
  assert_not q.valid?
end
test "rating presence not valid" do
  q = books(:one)
  q.rating = nil
  assert_not q.valid?
  q.rating = ""
  assert_not q.valid?
end
test "overview uniqueness not valid" do
  one = books(:one)
  two = books(:two)
  one.overview = two.overview
  assert_not one.valid?
end
test "title uniqueness not valid" do
  one = books(:one)
  two = books(:two)
  one.title = two.title
  assert_not one.valid?
end
end
