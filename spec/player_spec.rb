require "rspec"
require_relative "../lib/player.rb"
describe Player do
    describe "#initialize" do
        let(:name) {"Aleksandar"}
        let(:symbol) {"X"}
       context "when name and symbol are specified" do
           it "create variable name" do
            player = Player.new(name,symbol)
               expect(player.name).to eql("Aleksandar")
           end
           it "create variable symbol" do
            player = Player.new(name,symbol)
               expect(player.symbol).to eql("X")
           end
       end
       context "when name and symbol are not specified" do
        it "raise error" do
            expect{Player.new}.to raise_error
            end
        end
    end

    describe "#check_winner" do
        context "when we have a winner" do
            it "returns true" do 
                player = Player.new("Baraka", "X")
                player.play(1)
                player.play(2)
                player.play(3)
                expect(player.check_winner).to be true
            end
        end
        context "when we don't have a winner" do
            it "returns false" do
                player = Player.new("Baraka", "X")
                expect(player.check_winner).to be false
            end
        end
    end

end