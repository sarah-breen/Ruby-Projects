class Music
    def initialize
        @list = []
    end 

    def add(music)
        if @list.include?(music)
            return "You have already listened to that artist!"
        else 
        @list << music
        end 
    end 

    def list 
        return @list
    end 

end