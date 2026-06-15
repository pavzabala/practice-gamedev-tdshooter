-- src/managers/enemy_manager.lua

local Enemy = require("src.entities.enemy")

local EnemyManager = {}

EnemyManager.list = {}

function EnemyManager.load()
    table.insert(EnemyManager.list, Enemy.new(100, 100))
end

function EnemyManager.update(dt, playerX, playerY)
    for _, enemy in ipairs(EnemyManager.list) do
        enemy:update(dt, playerX, playerY)
    end
end

function EnemyManager.draw()
    for _, enemy in ipairs(EnemyManager.list) do
        enemy:draw()
    end
end

return EnemyManager
