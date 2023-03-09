class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: { message: "Title must be given please" }
  validates :title, presence: true
  validates :overview, presence: { message: "Overview must be given please" }
end
