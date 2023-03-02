class Like < ApplicationRecord
  validates :user_id, uniqueness: { scope: :acorn_id }
  belongs_to :acorn
  belongs_to :user
end
