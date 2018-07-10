require 'csv'

class BaseRepository
    def initialize(csv_file)
        @csv_file = csv_file
        @elements = []
        @next_id = 1
        load_csv if File.exist?(@csv_file)
    end

    def all
        return @elements
    end

    def add(element)
        element.id = @next_id
        @elements << element
        @next_id += 1
        write_csv
    end

    private
    
    def write_csv
        CSV.open(@csv_file, 'w') do |csv|
            csv << @elements.first.class.headers
            
            @elements.each do |element|
                csv << element.deserialize
            end
        end
    end

    def load_csv
        csv_options = { headers: :first_row, header_converters: :symbol }
        CSV.foreach(@csv_file, csv_options) do |row|
            @elements << serialize(row)
            @next_id += 1
        end
    end
end