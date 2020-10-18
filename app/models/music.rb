class Music < ApplicationRecord
	 mount_uploader :file, AudioFileUploader
	  acts_as_paranoid
      belongs_to :band
end
