class BaseView
    def ask_for(label)
        puts "#{label} > "
        return gets.chomp
    end
end