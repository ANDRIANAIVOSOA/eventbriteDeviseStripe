class UsersController < ApplicationController
    def show
        if current_user
            @events = Event.where(creator_id: current_user.id)
        else
            redirect_to new_event_path
        end
    end

    def view_user
        if params[:id] 
            @user = User.find(params[:id]) 
            @event_attended = EventAttendee.where(attendee_id: params['id']) 
            @events = [] 
            @event_attended.each do |e| 
                @events.push(Event.find(e.event_id)) 
            end 
        else 
            redirect_to new_event_path 
        end 
        event_attending = EventAttendee.where(attendee_id: params[:id]) 
        @attendees = [] 
        event_attending.each do |a| 
            @attendees.push(User.find(a.attendee_id)) 
        end
    end
end
