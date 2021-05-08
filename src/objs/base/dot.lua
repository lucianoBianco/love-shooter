local Object = require "modules.classic"

local Dot = Object:extend()

function Dot:new(x, y, s)
    self.x = x or math.random(100, 500)
    self.y = y or math.random(100, 500)
    self.speed = s or 200
end

function Dot:move(dt)
    self.x = self.x + self.speed * dt * math.random(-1,1)
    self.y = self.y + self.speed * dt * math.random(-1,1)
end

return Dot