class EventAttendee < ApplicationRecord
    validates :event_id, presence: true
    validates :attendee_id, presence: true
    belongs_to :event, class_name: 'Event'
    belongs_to :attendee, class_name: 'User', foreign_key: :attendee_id
end
