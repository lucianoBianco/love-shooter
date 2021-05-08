require('actions.factory')
local factory = require "src.actions.factory"

function love.keypressed(key)
    if key == "space" then
        factory.spawnRect()
    end
    if key == "up" then
        for _, v in ipairs(rects) do
            v:print()
        end
    end
end