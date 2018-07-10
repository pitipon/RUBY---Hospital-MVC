class Room
    attr_accessor :id
    attr_reader :capacity

    def initialize(attributes = {})
        @id = attributes[:id]
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

    def self.headers
        %w(id capacity)
    end
end