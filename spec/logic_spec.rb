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


    describe "#turn" do
         context "when player make it's turn" do  
            let (:game) {Game.new("Baraka","p2")} 
            let (:choice) {5}
            let (:player) {Player.new("Baraka", "X")}
            
            it "player choose is true" do
                game.turn(player,choice) 
                expect(game.board[choice-1].chosen).to be true
            end
            it "board cell get player symbol" do
                game.turn(player,choice) 
                expect(game.board[choice-1].sym).to eql(player.symbol)
            end
            it "check player choices" do
                game.turn(player,choice) 
                expect(player.choices).to include choice
            end
        end
    end

   describe "#choice_available?" do 
        let(:player1) {"Aleksandar"}
        let(:player2) {"Baraka"}
        let(:choice) { 5 }
        let(:player) {Player.new("Baraka", "X")}
        context "When the choice is not available" do
            it "raise error" do 
                game = Game.new(player1,player2)
                game.turn(player, choice)
                expect {game.choice_available?(choice)}.to raise_error
            end
        end
   end

#    describe "#display_board" do
#     let(:player1) {"Aleksandar"}
#     let(:player2) {"Baraka"}
    

#     context "when board is displayed" do
#         it "display board" do
#             game = Game.new(player1,player2)
#             board = game.board
#             expect {game.display_board}.to output("+---+---+---+\n" \
#                 "| #{board[0].sym} | #{board[1].sym} | #{board[2].sym} |\n" \
#                 "+---+---+---+\n" \
#                 "| #{board[3].sym} | #{board[4].sym} | #{board[5].sym} |\n" \
#                 "+---+---+---+ \n" \
#                 "| #{board[6].sym} | #{board[7].sym} | #{board[8].sym} |\n" \
#                 '+---+---+---+ ').to_stdout
#         end
#     end
#    end

   
end
