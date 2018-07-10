require_relative '../view/room_view'
require_relative '../model/room'

class RoomController
    def initialize(room_repository)
        @room_repository = room_repository
        @view = RoomView.new
    end

    def list
        rooms = @room_repository.all
        @view.display(rooms)
    end

    def add 
        # name = @view.ask_for(:name)
        # cured = @view.ask_for(:cured)

        # new_patient = Patient.new({name: name, cured: cured})

        # @patient_repository.add(new_patient)
    end
end