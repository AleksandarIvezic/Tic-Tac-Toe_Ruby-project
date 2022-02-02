require 'rspec'
require_relative '../lib/player'
describe Player do
  describe '#initialize' do
    let(:name) { 'Aleksandar' }
    let(:symbol) { 'X' }
    context 'when name and symbol are specified' do
      it 'create variable name' do
        player = Player.new(name, symbol)
        expect(player.name).to eql('Aleksandar')
      end
      it 'create variable symbol' do
        player = Player.new(name, symbol)
        expect(player.symbol).to eql('X')
      end
    end
    context 'when name and symbol are not specified' do
      it 'raise error' do
        expect { Player.new }.to raise_error(StandardError)
      end
    end
  end

  describe '#check_winner' do
    context 'when we have a winner' do
      it 'returns true' do
        player = Player.new('Baraka', 'X')
        player.play(1)
        player.play(2)
        player.play(3)
        expect(player.check_winner).to be true
      end
    end
    context "when we don't have a winner" do
      it 'returns false' do
        player = Player.new('Baraka', 'X')
        expect(player.check_winner).to be false
      end
    end
  end

  describe '#play' do
    context 'when we passed a choice as argument' do
      choice = 3
      name = 'Baraka'
      symbol = 'X'
      player = Player.new(name, symbol)
      player.play(choice)
      it 'push choice inside of choices' do
        expect(player.choices).to include(choice)
      end
    end

    context "when we didn't pass a choice as argument" do
      name = 'Baraka'
      symbol = 'X'
      player = Player.new(name, symbol)
      it 'raise error' do
        expect { player.play }.to raise_error(StandardError)
      end
    end
  end
end