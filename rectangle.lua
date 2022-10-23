-- ! file:rectangle.lua

Rectangle = Shape:extend()

function Rectangle:new(x, y, height, width)
    Rectangle.super.new(self,x,y)
    self.width = width
    self.height = height
end

function Rectangle:draw()
    love.graphics.rectangle("line",self.x,self.y, self.width, self.height)
end