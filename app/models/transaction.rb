class Transaction < ApplicationRecord
  belongs_to :category
  belongs_to :User

  validates :name,
            length: { minimum: 3, message: 'fields can not be less than 3 letters' }
  validates :amount,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
