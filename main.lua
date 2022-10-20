function love.load()
    x = 100
    fps = 0
end

function love.update(dt)
    fps = love.timer.getFPS()
    x = x + 100 * dt
end

function love.draw()
    love.graphics.printf("FPS : " .. tostring(fps),20,30,100)
    love.graphics.rectangle("line",x,50,200,150)
end