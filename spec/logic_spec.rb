require "rspec"
require_relative "../lib/logic.rb"

describe Game do
   context "initializing" do
        let(:player1) {"Aleksandar"}
        let(:player2) {"Baraka"}
       context "when player1 and player2 are specified" do
           it "create variables player1 and player2" do
            game = Game.new(player1,player2)
               expect(game.player1).to eql("Aleksandar")
           end
       end
   end
end