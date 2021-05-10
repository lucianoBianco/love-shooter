local Rect = require "src.objs.rect"

local factory = {}

function factory.spawnRect()
    -- rects.add(newRect)
    table.insert(rects, Rect())
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