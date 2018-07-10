require_relative '../view/patient_view'

class PatientController
    def initialize(patient_repository)
        @patient_repository = patient_repository
        @view = PatientView.new
    end

    def list
        patients = @patient_repository.all
        @view.display(patients)
    end
end