local Dot = require "src.objs.base.dot"
local Rect = Dot:extend()
local muscle = require "src.objs.base.muscle"


function Rect:new(x, y, w, h, s)
    Rect.super:new(x, y, s)
    self.sprite = love.graphics.newImage("assets/sprites/sheep.png")
    self.sw = self.sprite:getWidth()
    self.sh = self.sprite:getHeight()
    local ratio = self.sw / self.sh
    self.width = w or math.random(10, 80)
    self.height = self.width / ratio
    self.widthR = normalize(self.width, 10, 80)
    self.height = normalize(self.height, 10, 80)
    self.alive = true
    Rect:implement(muscle)
end

function Rect:implement(obj)
    for key, value in pairs(obj) do
        if self[key] == nil and type(value) == "function" then
          self[key] = value
        end
    end
end

function Rect:print()
    for key, value in pairs(self) do
        if self[key] ~= nil and type(value) ~= "function" then
            print(key, value)
        end
    end
    print()
end

function Rect:draw()
    if not self.alive then
        love.graphics.setColor(1, 0, 0, 0.5)
    else
        love.graphics.setColor(1, 1, 1, 1)
    end
    love.graphics.draw(self.sprite, self.x, self.y, 0, self.widthR, self.heightR, self.sw / 2, self.sh / 2)
end

return Rect