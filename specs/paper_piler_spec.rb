require 'rspec'
require '../canvas'
require '../paper'

RSpec.describe :canvas do
  context 'with small canvas and small paper' do
    it 'calculates the areas correctly' do
      canvas = Canvas.new(10, 10)
      paper = Paper.new(1, 0, 0, 5, 5)
      canvas.papers << paper

      areas = canvas.areas
      puts areas

      expect(areas[1]).to(eq(25))
      expect(areas[0]).to(eq(75))
    end
  end
end
