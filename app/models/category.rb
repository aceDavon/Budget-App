class Category < ApplicationRecord
  has_many :transactions

  validates :name,
            length: { minimum: 3, message: 'fields can not be less than 3 letters' }
  validates_format_of :icon, with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: 'field is not a valid url'
end
