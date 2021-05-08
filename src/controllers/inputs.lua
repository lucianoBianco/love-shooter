-- require('actions.factory')
local factory = require "src.actions.factory"

function love.keypressed(key)
    if key == "space" then
        factory.spawnRect()
    end
    if key == "up" then
        factory.printObjs()
    end
end