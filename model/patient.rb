class Patient
    attr_reader :name, :cured
    attr_accessor :room, :id

    def initialize(attributes = {})
        @id = attributes[:id]
        @name = attributes[:name]
        @cured = attributes[:cured] || false
    end

    def deserialize
        [@id, @name, @cured]
    end

    def cure
        @cured = true
    end

    def self.headers
        %w(id name cured)
    end
end