$canvas = []

def addX(x, y)
  $canvas[y][x] = "X"
  puts $canvas
end

canvas = ""
f = File.open("canvas2", "r") do |f|
  canvas_raw = f.readlines()

  canvas_width = canvas_raw[0].length
  for i in 1..canvas_raw.length
    if (canvas_raw[i+1] == nil || canvas_raw[i+1].empty?) && canvas_raw[i] == canvas_raw[0]
      break
    end
    $canvas.push(canvas_raw[i][1..canvas_width-3])
  end

  addX(2, 2)
end
