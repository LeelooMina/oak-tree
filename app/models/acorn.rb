class Acorn < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: {minimum: 2, mexium: 100}
  
  has_many :likes
  has_many :replies
end
