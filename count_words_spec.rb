require 'count_words'

RSpec.describe "count words method" do
    it "given a string, returns the number of words in that string" do
        result = count_words("hello my name is sarah")
        expect(result).to eq 5
        result = count_words("hello my name is sarah and i love coding")
        expect(result).to eq 9
    end
end 