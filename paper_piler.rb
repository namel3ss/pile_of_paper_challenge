require './canvas'
require './paper'

canvas = Canvas.new(20, 10)
canvas.add_paper(1, 5, 5, 10, 3)
canvas.add_paper(2, 0, 0, 7, 7)

canvas.draw
p canvas.areas
