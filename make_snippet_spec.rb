require 'make_snippet'

RSpec.describe "make snippet method" do

    it "if a string is longer than 5 words it returns first 5 words and ... at the end" do
        result = make_snippet("hi my name is sarah and I love coding")
        expect(result).to eq "hi my name is sarah..."
        result = make_snippet("hi my name is andy and I love coding")
        expect(result).to eq "hi my name is andy..."
    end

    it "if a string is less than 5 words it returns the string" do
        result = make_snippet("hi my name is ")
        expect(result).to eq "hi my name is "
        result = make_snippet("how are you?")
        expect(result).to eq "how are you?"
    end

end
