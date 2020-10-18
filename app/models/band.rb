class Band < ApplicationRecord
	has_many :musics, dependent: :destroy
	belongs_to :user
end
