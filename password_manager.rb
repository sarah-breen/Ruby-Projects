#Allow me to add new, validated passwords 
#Allow me to view a specific password 
#Allow me to see a list of all the services for which a password has been stored
class PasswordManager
    #does not take any args
    def initialize()
        @passwordshash = Hash.new
    end

    #take two args
    #store the service and password
    def add(service, password)
        if valid?(password) == true
        @passwordshash[service] = password
        else 
            return "Your password is not valid"
        end
    end 

    #checks to see if a password is valid
    def valid?(password)
        if password.length >= 8 && password.include?('!')
            return true
        elsif password.length >= 8 && password.include?('@')
            return true
        elsif password.length >= 8 && password.include?('$')
            return true
        elsif password.length >= 8 && password.include?('%')
            return true
        elsif password.length >= 8 && password.include?('&')
            return true
        else
            return false
        end
      end

      #check what the password is for the service 
      #takes one arg
      def password_for(service)
        @passwordshash[service]
      end

      #checks for a list of the services
      #takes no args
      def services
        @passwordshash.keys
      end
end


