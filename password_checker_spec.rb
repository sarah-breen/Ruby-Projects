require 'password_checker'

RSpec.describe PasswordChecker do 
    it "checks the length of the password is 8 or more characters" do
        password = PasswordChecker.new
        result = password.check("Password1234")
        expect(result).to eq true
    end

    it "returns a string if the password is as invalid length" do
        password = PasswordChecker.new
        expect { password.check("passwor") }.to raise_error "Invalid password, must be 8+ characters."
    end
end