
local Object = require "modules.classic"
local Rect = Object:extend()

function Rect:new(x, y, w, h, s)
    self.x = x or math.random(100, 500)
    self.y = y or math.random(100, 500)
    self.width = w or math.random(10, 80)
    self.height = h or math.random(10, 80)
    self.speed = s or 100
end

function Rect:print()
    print(self.x, self.y, self.width, self.height, self.speed)
end

function Rect:move(dt)
    self.x = self.x + self.speed * dt * math.random(-1,1)
    self.y = self.y + self.speed * dt * math.random(-1,1)
end

function Rect:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

return Rect