class Entry < ApplicationRecord
  belongs_to :category
  
  enum article:   %w(der die das)
  
  validates :de,   presence: true
  validates :en,   presence: true
  validates :ru,   presence: true
end
