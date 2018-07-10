require_relative '../view/patient_view'
require_relative '../model/patient'

class PatientController
    def initialize(patient_repository)
        @patient_repository = patient_repository
        @view = PatientView.new
    end

    def list
        patients = @patient_repository.all
        @view.display(patients)
    end

    def add 
        name = @view.ask_for(:name)
        cured = @view.ask_for(:cured)

        new_patient = Patient.new({name: name, cured: cured})

        @patient_repository.add(new_patient)
    end
end