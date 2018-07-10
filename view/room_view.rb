require_relative 'base_view'

class RoomView < BaseView
    def display(rooms)
        rooms.each do |room|
            puts "#{room.id} - Capacity: #{room.capacity} "
        end
    end
end