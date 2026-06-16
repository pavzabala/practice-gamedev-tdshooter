-- src/managers/enemy_manager.lua

local Enemy = require("src.entities.enemy")

local EnemyManager = {}
EnemyManager.spawnInterval = 2
EnemyManager.spawnTimer = 0

EnemyManager.list = {}

function EnemyManager.load()
    table.insert(EnemyManager.list, Enemy.new(100, 100))
end

function EnemyManager.update(dt, playerX, playerY)
    EnemyManager.spawnTimer = EnemyManager.spawnTimer + dt

    if EnemyManager.spawnTimer >= EnemyManager.spawnInterval then
        EnemyManager.spawnTimer = 0

        EnemyManager.spawn(100, 100)
    end

    for _, enemy in ipairs(EnemyManager.list) do
        enemy:update(dt, playerX, playerY)
    end
end

function EnemyManager.draw()
    for _, enemy in ipairs(EnemyManager.list) do
        enemy:draw()
    end
end

function EnemyManager.spawn(x, y)
    table.insert(EnemyManager.list, Enemy.new(x, y))
end

function EnemyManager.remove(index)
    table.remove(EnemyManager.list, index)
end

return EnemyManager
