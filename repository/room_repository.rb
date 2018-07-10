require_relative 'base_repository'
require_relative '../model/room'


class RoomRepository < BaseRepository
    private

    def serialize(row)
        row[:id] = row[:id].to_i
        row[:capacity] = row[:capacity]
        puts "row"
        puts row.inspect
        return Room.new(row)
    end

end