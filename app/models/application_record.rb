class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scope :created_today, -> { where(created_at: Time.zone.now.all_day) }
end
