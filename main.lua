require "src.imports"
function love.load()
    rects = require "src.entities.rects"
    love.graphics.setBackgroundColor(color(255, 255, 0))
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