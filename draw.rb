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

cursor = []
until ARGV.empty? do
  cursor.push(ARGV.shift.to_i)
end

canvas_raw = ""
while a = gets
  canvas_raw += a
end

canvas_lines = canvas_raw.split("\n")

canvas_width = canvas_lines[0].length
for i in 1..canvas_lines.length
  if (canvas_lines[i+1] == nil || canvas_lines[i+1].empty?) && canvas_lines[i] == canvas_lines[0]
    break
  end
  if canvas_lines[i] != nil
    $canvas.push(canvas_lines[i][1..canvas_width-3])
  end
end

getNeighbours(cursor[0], cursor[1])
