class Album < ApplicationRecord
  belongs_to :category
  belongs_to :artist

 #muitas musicas
  has_many :songs

  validates :title, presence: true
  validates :date, presence: true

  has_one_attached :cover
end
