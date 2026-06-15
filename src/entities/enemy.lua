-- src/entities/enemy.lua
vector = require("src.utils.vector")

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

function Enemy:update(dt, playerX, playerY)
    local dx = playerX - self.x
    local dy = playerY - self.y

    dx, dy = vector.normalize(dx, dy)

    self.x = self.x + dx * self.speed * dt
    self.y = self.y + dy * self.speed * dt
end

function Enemy:draw()
    love.graphics.circle("fill", self.x, self.y, self.radius)
end

return Enemy
