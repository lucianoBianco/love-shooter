local Object = require "modules.classic"

local rect2 = Object:extend()

function rect2:new()
    self.x = math.random(100, 500)
    self.y = math.random(100, 500)
    self.speed = 200
    self.sprite = love.graphics.newImage("assets/sprites/sheep.png")
end

function rect2:draw()
    love.graphics.draw(self.sprite, self.x, self.y)
end

return rect2