--! file: main.lua

function love.load()
    -- Leave out format
    -- require("example")

    Object = require "classic"
    require "shape"
    require "rectangle"
    require "circle"

    r1 = Rectangle(120,80,40,60)
    r2 = Circle(100,100,50)

    myImage = love.graphics.newImage("sheep.png")
end

function love.keypressed(key)
    
end

function love.update(dt)
    -- fps = love.timer.getFPS()

    r1:update(dt)
    r2:update(dt)
end

function love.draw()
    -- love.graphics.printf("FPS : " .. tostring(fps),20,30,100)
    r1:draw()
    r2:draw()

    love.graphics.draw(myImage, 100, 100)
end