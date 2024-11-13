class Artist < ApplicationRecord

    has_many :albums

    validades :name, presence: true
    has_one_attached :photo

end
