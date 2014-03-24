class Event < ActiveRecord::Base
  validates :title, presence: true
  has_attached_file :flier
  has_attached_file :flier_image
  validates_attachment_content_type :flier, :content_type => %w(image/jpeg image/jpg image/png application/pdf)
  validates_attachment_content_type :flier_image, :content_type => %w(image/jpeg image/jpg image/png)
  
  def self.after_today
    where("event_datetime >= ?", Date.today)
  end
  
  def self.past
    where("event_datetime < ?", Date.today)
  end
  
  scope :chron, -> { order 'event_datetime DESC' }
  scope :rchron, -> { order 'event_datetime ASC' }

end