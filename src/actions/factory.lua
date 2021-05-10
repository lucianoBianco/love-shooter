local Rect = require "src.objs.rect"

local factory = {}

function factory.spawnRect()
    local newRect = Rect()
    rects.add(newRect)
end

function factory.toggle(key, state)
    for _, v in ipairs(rects) do
        v[key] = state
    end
end

function factory.printObjs()
    for _, v in ipairs(rects) do
        v:print()
    end
end

return factory