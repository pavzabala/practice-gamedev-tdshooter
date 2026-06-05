-- player.lua
local vector = require("src.utils.vector")
local graphics = require("src.utils.graphics")

local player = {
    x = 0,
    y = 0,
    width = 30,
    height = 50,
    speed = 300,
    angle = 0,
}

local function getMovementInput()
    local moveX = 0
    local moveY = 0

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

    return moveX, moveY
end

local function updateAim()
    local mx, my = love.mouse.getPosition()

    player.angle = math.atan2(my - player.y, mx - player.x)
end

local function clampToScreen()
    local screenWidth = love.graphics.getWidth()
    local screenHeight = love.graphics.getHeight()

    local halfWidth = player.width / 2
    local halfHeight = player.height / 2

    player.x = math.max(halfWidth, math.min(player.x, screenWidth - halfWidth))
    player.y = math.max(halfHeight, math.min(player.y, screenHeight - halfHeight))
end

function player.load()
    player.x = love.graphics.getWidth() / 2
    player.y = love.graphics.getHeight() / 2
end

function player.update(dt)
    local moveX, moveY = getMovementInput()

    moveX, moveY = vector.normalize(moveX, moveY)

    player.x = player.x + moveX * player.speed * dt
    player.y = player.y + moveY * player.speed * dt

    clampToScreen()
    updateAim()
end

function player.draw()
    graphics.drawRotatedRectangle(
        "fill",
        player.x,
        player.y,
        player.width,
        player.height,
        player.angle
    )
end

return player
