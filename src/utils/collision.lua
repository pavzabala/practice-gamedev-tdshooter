local Collision = {}

function Collision.circles(x1, y1, r1, x2, y2, r2)
    local dx = x2 - x1
    local dy = y2 - y1

    local distanceSquared = dx * dx + dy * dy

    local radiusSum = r1 + r2

    return distanceSquared < radiusSum * radiusSum
end

return Collision
