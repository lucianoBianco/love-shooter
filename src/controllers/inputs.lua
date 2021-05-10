-- require('actions.factory')
local factory = require "src.actions.factory"

function love.keypressed(key)
    print('pressed', key)
    if key == "space" then
        factory.spawnRect()
    end
    if key == "up" then
        factory.toggle("up", true)
    end
    if key == "down" then
        factory.toggle("down", true)
    end
    if key == "left" then
        factory.toggle("left", true)
    end
    if key == "right" then
        factory.toggle("right", true)
    end
end


function love.keyreleased(key)
    print('released', key)
    if key == "up" then
        factory.toggle("up", false)
    end
    if key == "down" then
        factory.toggle("down", false)
    end
    if key == "left" then
        factory.toggle("left", false)
    end
    if key == "right" then
        factory.toggle("right", false)
    end
end