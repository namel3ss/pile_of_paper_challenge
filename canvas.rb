class Canvas
  attr_accessor :width, :height, :papers

  def initialize(width, height)
    self.width = width
    self.height = height
    self.papers = []

    @color = 0
    @areas = {}
  end

  def print
    puts 'Drawing canvas ...'
    height.times do |row|
      row_s = ''

      width.times do |column|
        row_s << find_color(column, row).to_s
      end

      p row_s
    end
  end

  def areas
    puts 'Calculating areas ...'
    height.times do |row|
      width.times do |column|
        increment_area(find_color(column, row))
      end
    end

    @areas
  end

  private

  def find_color(column, row)
    paper = papers.select { |p| p.in_position?(column, row) }.last

    paper.nil? ? @color : paper.color
  end

  def increment_area(color)
    if @areas[color].nil?
      @areas[color] = 0
    end

    @areas[color] += 1
  end
end
