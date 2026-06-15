-- src/entities/enemy.lua

local Enemy = {}

Enemy.__index = Enemy

function Enemy.new(x, y)
    local self = setmetatable({}, Enemy)

    self.x = x
    self.y = y
    self.radius = 20
    self.speed = 100

    return self
end

function Enemy:update(dt, playerX, playerY) end

function Enemy:draw()
    love.graphics.circle("fill", self.x, self.y, self.radius)
end

return Enemy
