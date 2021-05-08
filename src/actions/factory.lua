local Rect = require "objs.rect"

local factory = {}

function factory.spawnRect()
    local newRect = Rect()
    rects.add(newRect)
end

return factory