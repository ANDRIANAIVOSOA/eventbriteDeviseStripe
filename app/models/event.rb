class Event < ApplicationRecord
    validates :description, presence: true
    validates :place, presence: true
    validates :date, presence: true
    
    belongs_to :creator, class_name: 'User'
    has_many :event_attendees
    has_many :attendees, through: :event_attendees
end
