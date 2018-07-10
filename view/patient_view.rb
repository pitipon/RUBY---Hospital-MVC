require_relative 'base_view'

class PatientView < BaseView
    def display(patients)
        patients.each do |patient|
            puts "#{patient.id} - #{patient.name} , cure: #{patient.cured}"
        end
    end
end