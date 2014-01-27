class Event < ActiveRecord::Base
  validates :title, presence: true
  has_attached_file :flier
  has_attached_file :flier_image
end
