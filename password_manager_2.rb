
#Allow me to add new, validated passwords 
#Allow me to view a specific password 
#Allow me to see a list of all the services for which a password has been stored


class PasswordManager2
    #does not take any args
    def initialize()
        @passwordshash = Hash.new
    end

    #take two args
    #store the service and password
    #unless the password is in use elsewhere
    #or service already has a stored password
    def add(service, password) 
        if @passwordshash.key?(service)
            return "ERROR: Service names must be unique"
        elsif @passwordshash.value?(password)        
            return "ERROR: Passwords must be unique"
        else valid?(password) == true
        @passwordshash[service] = password
        end
    end 

    #checks to see if a password is valid

    def valid_length?(password)
        return password.length >= 8
    end

    REQUIRE_CHARS = /[!@$%&]/

    def has_special_char?(password)
        if password =~ REQUIRE_CHARS
            return true
        else 
            return false
        end
    end

    def valid?(password)
        if valid_length?(password) && has_special_char?(password)
            return true
        else 
            return false
            end 
        end 

     #remove, takes one string, the name of the service as arg
     #deletes that service and password
        def remove(service)
            @passwordshash.delete(service)
        end   

    #update takes 2 strings as args, service and a new password
    #updates the password of the service
    #unless the password is in use elsewhere
    def update(service, password)
        if @passwordshash.value?(password)
            return "This password is already in use"
        else 
            @passwordshash[service] = password 
        end   
    end 

 
    #check what the password is for the service 
    #takes one arg
      def password_for(service)
        @passwordshash[service]
      end

    #sort_by takes one arg, either "service" or "added_on"
    #returns a list of the services sorted by "service" or "added_on"
    #added_on needs to be sorted by date added chronologically
    def sort_by(service_or_added_on)
        if service_or_added_on == 'service'
        @passwordshash.keys.sort
        elsif service_or_added_on == 'added_on'
        @passwordshash.keys.reverse
        end
    end 

    #checks for a list of the services
    #takes no args
    #does not return all the passwords
      def services
        @passwordshash.keys
      end
    end

  