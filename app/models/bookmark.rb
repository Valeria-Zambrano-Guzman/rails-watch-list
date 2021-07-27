class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, presence: true, uniqueness: { scope: :list_id, message: "is already in the list" }
  validates :list_id, presence: true
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :comment, scope: [:movie_id, :list_id]
end
