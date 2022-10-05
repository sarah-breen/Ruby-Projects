require "music_test"

RSpec.describe Music do 
    it "adds a band or artist to the list" do 
        music = Music.new 
        music.add("Metallica")
        expect(music.list).to eq ["Metallica"]
    end 

    context "when there is more than one band on the list" do
    it "returns a list of the bands" do
        music = Music.new
        music.add("Metallica")
        music.add("Britney") 
        expect(music.list).to eq ["Metallica", "Britney"]
    end 
end 

    context "if an artist is already on the list" do
        it "returns a message to tell the user" do 
            music = Music.new
            music.add("Metallica")
            result = music.add("Metallica")
            expect(result).to eq "You have already listened to that artist!"
        end 
    end 

end 