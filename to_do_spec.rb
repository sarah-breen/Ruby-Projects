require 'to_do'

RSpec.describe "keep track method" do
    it "return true if the string contains the word TODO" do
    expect(keep_track("TODO list: laundry, homework")).to eq true
    expect(keep_track("DONE: walked the dog")).to eq false
    end
end