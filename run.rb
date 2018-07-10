require_relative 'repository/patient_repository'
require_relative 'controller/patient_controller'

require_relative 'repository/room_repository'
require_relative 'controller/room_controller'

require_relative 'router'


patient_csv = "db/patients.csv"
patient_repository = PatientRepository.new(patient_csv)
patient_controller = PatientController.new(patient_repository)

room_csv = "db/rooms.csv"
room_repository = RoomRepository.new(room_csv)
room_controller = RoomController.new(room_repository)

router = Router.new(patient_controller, room_controller)
router.run