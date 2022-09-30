_G.love = require("love")

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    anim8 = require 'libs/anim8' --import anim8 lib
    sti = require 'libs/sti'    --import sti lib

    bedroomMap = sti('maps/bedroom/map1.lua')

    aura = {}
    aura.x = 200
    aura.y = 200
    aura.speedX = 2
    aura.speedY = 2
    
    aura.spritesheet = love.graphics.newImage('assets/homeAura/HomeAura-spritesheet.png')
    aura.grid = anim8.newGrid(32, 50, aura.spritesheet:getWidth(), aura.spritesheet:getHeight())

    aura.moveAnimations = {}
    aura.moveAnimations.down = anim8.newAnimation(aura.grid('1-4', 1), 0.2)
    aura.moveAnimations.left = anim8.newAnimation(aura.grid('1-4', 2), 0.2)
    aura.moveAnimations.right = anim8.newAnimation(aura.grid('1-4', 3), 0.2)
    aura.moveAnimations.up = anim8.newAnimation(aura.grid('1-4', 4), 0.2)
    
    aura.animate = aura.moveAnimations.down
end

function love.update(dt)
    local isPlayerMoving = false

    if love.keyboard.isDown("right") then
        aura.x = aura.x + aura.speedX
        aura.animate = aura.moveAnimations.right
        isPlayerMoving = true
    elseif love.keyboard.isDown("left") then
        aura.x = aura.x - aura.speedX
        aura.animate = aura.moveAnimations.left
        isPlayerMoving = true
    elseif love.keyboard.isDown("up") then
        aura.y = aura.y - aura.speedY
        aura.animate = aura.moveAnimations.up
        isPlayerMoving = true
    elseif love.keyboard.isDown("down") then
        aura.y = aura.y + aura.speedY
        aura.animate = aura.moveAnimations.down
        isPlayerMoving = true
    end

    if isPlayerMoving == false then
        aura.animate:gotoFrame(2)
    end

    aura.animate:update(dt)
end

function love.draw()
    bedroomMap:draw()
    love.graphics.scale(1.3, 1.3)
    aura.animate:draw(aura.spritesheet, aura.x, aura.y)
end