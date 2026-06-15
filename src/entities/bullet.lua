-- src/entities/bullet.lua

local Bullet = {}

Bullet.__index = Bullet

function Bullet.new(x, y, angle)
    local self = setmetatable({}, Bullet)

    self.x = x
    self.y = y
    self.angle = angle
    self.speed = 300
    self.radius = 4

    return self
end

function Bullet:update(dt)
    self.vx = math.cos(self.angle) * self.speed
    self.vy = math.sin(self.angle) * self.speed

    self.x = self.x + self.vx * dt
    self.y = self.y + self.vy * dt
end

function Bullet:draw()
    love.graphics.circle("fill", self.x, self.y, self.radius)
end

function Bullet:isOffscreen()
    local width = love.graphics.getWidth()
    local height = love.graphics.getHeight()

    return self.x < -self.radius
        or self.x > width + self.radius
        or self.y < -self.radius
        or self.y > height + self.radius
end

return Bullet
