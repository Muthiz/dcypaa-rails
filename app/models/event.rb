class Event < ActiveRecord::Base
  validates :title, presence: true
  has_attached_file :flier
  has_attached_file :flier_image
  
  def self.after_today
    where("event_datetime >= ?", Date.today)
  end
  
  def self.past
    where("event_datetime < ?", Date.today)
  end
  
  scope :chron, -> { order 'event_datetime DESC' }
  scope :rchron, -> { order 'event_datetime ASC' }

  
end