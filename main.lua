local player = require("src.entities.player")

function love.load()
    love.window.setMode(1280, 720)
end

function love.update(dt)
    local moveX = 0
    local moveY = 0

    local screenWidth = love.graphics.getWidth()
    local screenHeight = love.graphics.getHeight()

    if love.keyboard.isDown("w") then
        moveY = moveY - 1
    end
    if love.keyboard.isDown("s") then
        moveY = moveY + 1
    end
    if love.keyboard.isDown("a") then
        moveX = moveX - 1
    end
    if love.keyboard.isDown("d") then
        moveX = moveX + 1
    end

    player.x = player.x + moveX * player.speed * dt
    player.y = player.y + moveY * player.speed * dt

    player.x = math.max(0, math.min(player.x, screenWidth - player.width))
    player.y = math.max(0, math.min(player.y, screenHeight - player.height))
end

function love.draw()
    love.graphics.clear(0.1, 0.1, 0.1)

    love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)
end
