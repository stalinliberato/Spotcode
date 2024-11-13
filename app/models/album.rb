class Album < ApplicationRecord
  belongs_to :category
  belongs_to :artist

 #muitas musicas
  has_many :songs

  validates :title, presense: true
  validates :date, presense: true

  has_one_attached :cover
end
