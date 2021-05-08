local Dot = require "src.objs.base.dot"
local Rect = Dot:extend()


function Rect:new(x, y, w, h, s)
    Rect.super:new(x, y, s)
    self.sprite = love.graphics.newImage("assets/sprites/sheep.png")
    self.sw = self.sprite:getWidth()
    self.sh = self.sprite:getHeight()
    local ratio = self.sw / self.sh
    self.width = w or normalize(math.random(10, 80), 10, 80)
    self.height = h or self.width / ratio
end

function Rect:print()
    print(self.super)
    print("X", self.x)
    print("Y", self.y)
    print("Speed", self.speed)
    print("Width", self.width)
    print("Height", self.height)
end

function Rect:draw()
    love.graphics.draw(self.sprite, self.x, self.y, 0, self.width, self.height, self.sw / 2, self.sh / 2)
end

return Rect