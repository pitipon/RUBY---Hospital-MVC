class Router
    def initialize(patient_controller, room_controller)
        @patient_controller = patient_controller
        @room_controller = room_controller
    end

    def run
        
        loop do
            print_menu

            puts "What do you want to do?"
            puts ">"

            action = gets.chomp.to_i

            case action
            when 1 then @patient_controller.list
            when 2 then @patient_controller.add
            when 3 then @room_controller.list
            else
                puts "Wrong number!"
            end
        end
    end

    private

    def print_menu
        puts '1 lists all patients'
        puts '2 add new patients'
        puts '3 lists all rooms'
    end
end