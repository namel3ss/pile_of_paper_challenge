require './canvas'
require './paper'

canvas = Canvas.new(20, 30)

paper1 = Paper.new(1, 5, 5, 10, 3)
canvas.papers << paper1

paper2 = Paper.new(2, 0, 0, 7, 7)
canvas.papers << paper2

canvas.print
p canvas.areas
