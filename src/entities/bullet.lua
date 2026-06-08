-- src/entities/bullet.lua

local Bullet = {}

Bullet.__index = Bullet

function Bullet.new(x, y, angle)
    local self = setmetatable({}, Bullet)

    self.x = x
    self.y = y
    self.angle = angle
    self.speed = 500
    self.radius = 4

    return self
end

function Bullet:update(dt)
    -- implement later in step 6
end

function Bullet:draw()
    love.graphics.circle("fill", self.x, self.y, self.radius)
end

return Bullet
