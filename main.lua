-- main.lua
local player = require("src.entities.player")

function love.load()
    love.window.setMode(1280, 720)
    player.load()
end

function love.update(dt)
    player.update(dt)
end

function love.draw()
    local mx, my = love.mouse.getPosition()

    love.graphics.clear(0.1, 0.1, 0.1)

    player.draw()
    love.graphics.line(player.x, player.y, mx, my)
end
