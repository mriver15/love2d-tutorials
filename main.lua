--! file: main.lua

function love.load()
    -- Leave out format
    require("example")

    x = 100
    fps = 0

    rectangles = {}
end

function createRect()
    rect = {} 
    rect.x = 100
    rect.y = 100
    rect.width = 70
    rect.height = 90
    rect.speed = 100

    table.insert(rectangles,rect)
end

function love.keypressed(key)
    if key=="space" then
        createRect()
    end
end

function love.update(dt)
    fps = love.timer.getFPS()

end

function love.draw()
    love.graphics.printf("FPS : " .. tostring(fps),20,30,100)
    
    for i, rect in ipairs(rectangles) do
        love.graphics.rectangle('line',rect.x,rect.y,rect.width,rect.height)
    end

end