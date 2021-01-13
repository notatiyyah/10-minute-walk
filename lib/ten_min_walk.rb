def ten_minute_walk?(walk)
  return false if walk.length != 10
  
  x_coord = 0
  y_coord = 0
  
  walk.each{ |move| x_coord, y_coord = move_person(move,x_coord,y_coord) }
  return x_coord == 0 && y_coord == 0
end

def move_person(move, x_coord, y_coord)
  case move
  when "n"
    y_coord += 1
  when "s"
    y_coord -= 1
  when "e"
    x_coord += 1
  when "w"
    x_coord -= 1
  end
  return x_coord, y_coord
end