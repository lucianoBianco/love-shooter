function isColliding(a, b)
    local a_sides = {
        left = a.x,
        right = a.x + a.width,
        top = a.y,
        bottom = a.y + a.height
    }
    local b_sides = {
        left = b.x,
        right = b.x + b.width,
        top = b.y,
        bottom = b.y + b.height
    }
    if a_sides.right > b_sides.left and
    a_sides.left < b_sides.right and
    a_sides.top < b_sides.bottom and
    a_sides.bottom > b_sides.top then
        print(true)
        return true
    end
    
    print(false)
    return false
end

function kill(obj)
    obj.alive = false
end