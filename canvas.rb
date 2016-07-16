class Canvas
  attr_accessor :width, :height

  def initialize(width, height)
    self.width = width
    self.height = height
    @color = 0
    @areas = {}

    init_blank_canvas
  end

  def add_paper(color, x, y, width, height)
    start_y = y
    end_y = y + height
    start_x = x
    end_x = x + width

    (start_y...end_y).each do |row|
      (start_x...end_x).each do |column|
        old_color = @canvas[row][column]
        update_area_color(color, old_color)
        @canvas[row][column] = color
      end
    end
  end

  def draw
    puts 'Drawing canvas ...'
    height.times do |row|
      width.times do |column|
        print @canvas[row][column]
      end

      # print new line after the row
      puts
    end
  end

  def areas
    @areas
  end

  private

  def init_blank_canvas
    @canvas = Array.new(height) do
      Array.new(width) do
        @color
      end
    end

    # init areas and canvas color area
    @areas[0] = width * height
  end

  def update_area_color(new_color, old_color)
    if @areas[new_color].nil?
      @areas[new_color] = 0
    end

    @areas[new_color] += 1

    if @areas[old_color] && @areas[old_color] > 0
      @areas[old_color] -= 1
    end
  end
end
