require "rspec"
require_relative "../lib/logic.rb"

describe Game do
   context "initializing" do
        let(:player1) {"Aleksandar"}
        let(:player2) {"Baraka"}
       context "when player1 and player2 are specified" do
           it "create variable player1" do
            game = Game.new(player1,player2)
               expect(game.player1).to eql("Aleksandar")
           end
           it "create variable player2" do
            game = Game.new(player1,player2)
               expect(game.player2).to eql("Baraka")
           end
       end

       context "when player1 and player2 are not specified" do
        it "raise error" do
            expect{Game.new}.to raise_error
        end
    end
   end

   
end