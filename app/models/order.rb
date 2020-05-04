# == Schema Information
#
# Table name: orders
#
#  id                 :bigint           not null, primary key
#  credit_card_number :string
#  email              :string
#  exp_month          :integer
#  exp_year           :integer
#  security_code      :integer
#  total              :float
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Order < ApplicationRecord
    has_many :cart_items, dependent: :destroy
    belongs_to :user
    validates :email, presence: true
    validates :credit_card_number, presence: true
    #validates :exp_date, presence: true
    validates :exp_month, presence: true
    validates :exp_year, presence: true
    validates :security_code, presence: true


    validate :card_must_be_current
    validate :security_code_must_have_3_digits
    validate :credit_card_number_must_have_at_least_13_digits #must contain digits/cannot contain letters/special charact
    
    def card_must_be_current
        #if month selected has already passed for year selected
        if exp_year == Date.today.year and exp_month < Date.today.month
            errors.add(:exp_month, "must be current")
        end
    end
    
    def credit_card_number_must_have_at_least_13_digits
        #if ccn contains less than 13 characters
        #If ccn does not contain only digits
        if credit_card_number.length < 13 or credit_card_number.scan(/\D/).empty? == false 
            errors.add(:credit_card_number, "must contain at least 13 digits")
        end
    end

    def security_code_must_have_3_digits
        #if cvv does not contain 3 characters
        #If cvv does not contain only digits
        if security_code.to_s.length != 3 or security_code.to_s.scan(/\D/).empty? == false 
            errors.add(:security_code, "must be a 3 digit code")
        end
    end

    
end
