
function love.load()
  require 'Functions'
  req({
    'Methods',
    'Tables',

    'BasicObject',
    'Object',

    'Timer',
    'Input',
    'Key',
    'Mouse',
    'Controller',
    'Point',
    'Line',
    'Rect',
    'Circle',
  })
  paused, frame = false, false
  load()
end

function love.update(dt)
  if not paused or frame then updateAll(dt) end
  if frame then frame = false end
  update(dt)
end

function love.draw()
  drawAll()
  draw()
end
