$canvas = []

def addX(x, y)
  $canvas[y][x] = "#"
  puts "STEP:"
  puts $canvas
  puts ""

  getNeighbours(x, y)
end

def isSet(x, y)
  return $canvas[y][x] != " "
end

def setIfNotSet(x, y)
  if !isSet(x, y)
    addX(x, y)
  end
end

def getNeighbours(x, y)
  if x >= 1
    setIfNotSet(x-1, y)
  end
  if x < $canvas[0].length
    setIfNotSet(x+1, y)
  end
  if y >= 1
    setIfNotSet(x, y-1)
  end
  if y < $canvas.length-1
    setIfNotSet(x, y+1)
  end
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
  getNeighbours(2, 2)
end
