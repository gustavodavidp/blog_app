class Article < ApplicationRecord
	belongs_to :user
	validates :user_id, presence: true #valida que cara articulo tenga un usuario
	has_many :comments
	validates :title, presence: true,
                    length: { minimum: 5 }
    validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
