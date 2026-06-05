-- graphics.lua

local graphics = {}

function graphics.drawRotatedRectangle(mode, x, y, width, height, angle)
    love.graphics.push()
    love.graphics.translate(x, y)
    love.graphics.rotate(angle + math.pi / 2)
    love.graphics.rectangle(mode, -width / 2, -height / 2, width, height) --origin of rect in the middle
    love.graphics.pop()
end

return graphics
