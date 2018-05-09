class CreateEventAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :event_attendees do |t|
      t.belongs_to :event
      t.belongs_to :attendee
      
      t.timestamps null: false
    end
  end
end
