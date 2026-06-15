-- main.lua
local player = require("src.entities.player")

local bullet_manager = require("src.managers.bullet_manager")

local enemy_manager = require("src.managers.enemy_manager")

function love.load()
    love.window.setMode(1280, 720)
    player.load()
    enemy_manager.load()
end

function love.update(dt)
    player.update(dt)
    bullet_manager.update(dt)
    enemy_manager.update(dt, player.x, player.y)
end

function love.draw()
    local mx, my = love.mouse.getPosition()

    love.graphics.clear(0.1, 0.1, 0.1)

    love.graphics.print("Bullets: " .. #bullet_manager.list, 10, 10)

    player.draw()
    love.graphics.line(player.x, player.y, mx, my)

    bullet_manager.draw()
    enemy_manager.draw()
end

function love.mousepressed(x, y, button)
    if button == 1 then
        bullet_manager.spawn(player.x, player.y, player.angle)
    end
end
