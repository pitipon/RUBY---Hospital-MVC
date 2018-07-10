require_relative 'repository/patient_repository'
require_relative 'controller/patient_controller'

require_relative 'router'


patient_csv = "db/patients.csv"
patient_repository = PatientRepository.new(patient_csv)
patient_controller = PatientController.new(patient_repository)

router = Router.new(patient_controller)
router.run