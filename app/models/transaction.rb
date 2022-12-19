class Transaction < ApplicationRecord
  belongs_to :category
  belongs_to :User
end
