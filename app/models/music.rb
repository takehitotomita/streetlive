class Music < ApplicationRecord
	 mount_uploader :file, AudioFileUploader
	 mount_uploader :img_id, ImageUploader
	 acts_as_paranoid
     belongs_to :band

     validates :name, presence: true
  	 validates :img_id, presence: true
  	 validates :introduction, presence: true
  	 validates :file, presence: true

	 def self.search(search)
	     return Music.all unless search
	     Music.where(['name LIKE ?', "%#{search}%"])
	 end
    
end
