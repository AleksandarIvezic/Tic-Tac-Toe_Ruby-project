require "rspec"
require_relative "../lib/player.rb"
describe Player do
    context "initializing" do
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
end