require_relative 'base_repository'
require_relative '../model/patient'


class PatientRepository < BaseRepository
    private

    def serialize(row)
        puts "row"
        puts row.inspect
        row[:id] = row[:id].to_i
        row[:cured] = row[:cured] == true
        return Patient.new(row)
    end

end