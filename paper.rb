class Paper
  attr_accessor :width, :height, :color, :x, :y

  def initialize(color, x, y, width, height)
    self.width = width
    self.height = height
    self.color = color
    self.y = y
    self.x = x
  end

  def in_position?(pos_x, pos_y)
    (x <= pos_x && pos_x <= x + width) &&\
     (y <= pos_y && pos_y <= y + height)
  end
end
