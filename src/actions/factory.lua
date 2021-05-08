local Rect = require "src.objs.rect"

local factory = {}

function factory.spawnRect()
    local newRect = Rect()
    rects.add(newRect)
end

function factory.printObjs()
    for _, v in ipairs(rects) do
        v:print()
        for index, value in ipairs(v.muscle) do
            print(value)
        end
        print()
    end
end

return factory