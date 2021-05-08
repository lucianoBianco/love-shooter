require("controllers.inputs")

function love.load()
    rects = require "entities.rects"
end

function love.update(dt)
    for _, v in ipairs(rects) do
        v:move(dt)
    end
end


function love.draw()
    for _, v in ipairs(rects) do
        v:draw()
    end
end