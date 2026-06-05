-- main.lua
local player = require("src.entities.player")

local function drawRotatedRectangle(mode, x, y, width, height, angle)
    love.graphics.push()
    love.graphics.translate(x, y)
    love.graphics.rotate(angle + math.pi / 2)
    love.graphics.rectangle(mode, -width / 2, -height / 2, width, height) --origin of rect in the middle
    love.graphics.pop()
end

function love.load()
    love.window.setMode(1280, 720)
    player.x = love.graphics.getWidth() / 2
    player.y = love.graphics.getHeight() / 2
    print(love.getVersion())
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

    -- normalize movement
    local length = math.sqrt(moveX * moveX + moveY * moveY)
    if length > 0 then
        moveX = moveX / length
        moveY = moveY / length
    end

    player.x = player.x + moveX * player.speed * dt
    player.y = player.y + moveY * player.speed * dt

    -- boundary check
    local halfWidth = player.width / 2
    local halfHeight = player.height / 2
    player.x = math.max(halfWidth, math.min(player.x, screenWidth - halfWidth))
    player.y = math.max(halfHeight, math.min(player.y, screenHeight - halfHeight))

    local mx, my = love.mouse.getPosition()
    player.angle = math.atan2(my - player.y, mx - player.x)
end

function love.draw()
    local mx, my = love.mouse.getPosition()

    love.graphics.clear(0.1, 0.1, 0.1)

    drawRotatedRectangle("fill", player.x, player.y, player.width, player.height, player.angle)

    love.graphics.line(player.x, player.y, mx, my)
end
