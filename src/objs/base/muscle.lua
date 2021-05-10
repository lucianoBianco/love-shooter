local Muscle = {
    up = false,
    down = false,
    left = false,
    right = false,
    wiggle = function (this, dt)
        if not this.alive then return end
        this.x = this.x + this.speed * dt * math.random(-1,1)
        this.y = this.y + this.speed * dt * math.random(-1,1)
    end,
    horizontal = function (this, dir, dt)
        this.x = this.x + (this.speed * dt * dir)
    end,
    vertical = function (this, dir, dt)
        this.y = this.y + (this.speed * dt * dir)
    end,
    motor = function (this, dt)
        if not this.up and not this.down and not this.left and not this.right then
            this:wiggle(dt)
        end
        if this.up and not this.down then
            this:vertical(-1, dt)
        elseif this.down and not this.up then
            this:vertical(1, dt)
        end
        if this.left and not this.right then
            this:horizontal(-1, dt)
        elseif this.right and not this.left then
            this:horizontal(1, dt)
        end
    end
}

return Muscle