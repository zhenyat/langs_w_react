class Category < ApplicationRecord
  has_many :entries
  
  validates :de,   presence: true
  validates :en,   presence: true
  validates :ru,   presence: true
end
