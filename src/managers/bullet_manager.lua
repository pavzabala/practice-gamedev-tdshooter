--src/managers/bullet_manager.lua

local Bullet = require("src.entities.bullet")

local BulletManager = {}

BulletManager.list = {}

function BulletManager.spawn(x, y, angle)
    local bullet = Bullet.new(x, y, angle)

    table.insert(BulletManager.list, bullet)
end

function BulletManager.update(dt)
    for _, bullet in ipairs(BulletManager.list) do
        bullet:update(dt)
    end
end

function BulletManager.draw()
    for _, bullet in ipairs(BulletManager.list) do
        bullet:draw()
    end
end

return BulletManager
