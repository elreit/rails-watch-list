class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, :scope => [:list_id]
  validates :comment, presence: true
  belongs_to :movie
  belongs_to :list
end
