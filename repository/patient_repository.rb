require_relative 'base_repository'
require_relative '../model/patient'


class PatientRepository < BaseRepository
    private

    def serialize(row)
        row[:id] = row[:id].to_i
        row[:cured] = row[:cured] == true
        return Patient.new(row)
    end

end