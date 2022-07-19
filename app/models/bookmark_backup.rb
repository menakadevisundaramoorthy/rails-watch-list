class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movies_id, uniqueness: { scope: :lists_id }
  validates :comment, length: { minimum: 6 }
end
