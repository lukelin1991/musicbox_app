class Song < ApplicationRecord
  belongs_to :artist
  has_many :playlist_songs, dependent: :destroy
  has_many :songs, through: :playlist_songs
end
