class Room
    attr_accessor :id

    def initialize(attributes = {})
        @capacity = attributes[:capacity] || 0
        @patients = attributes[:patients] || []
    end

    def deserialize
        [@id, @capacity]
    end

    def full?
        return @capacity <= @patients.size
    end

    def add_patient(patient)
        fail Exception, "Room is full!" if full?
        patient.room = self
        @patients.push(patient)
    end
end