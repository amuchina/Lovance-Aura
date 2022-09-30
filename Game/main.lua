_G.love = require("love")

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    wf = require 'libs/windfield'
    world = wf.newWorld(0, 0)

    anim8 = require 'libs/anim8' --import anim8 lib
    sti = require 'libs/sti'    --import sti lib

    bedroomMap = sti('maps/bedroom/map.lua')

    aura = {}
    aura.x = 300;
    aura.y = 300;
    aura.collider = world:newBSGRectangleCollider(aura.x, aura.y, 32, 50, 0)
    aura.collider:setFixedRotation(true)
    
    aura.speed = 300;
    
    aura.spritesheet = love.graphics.newImage('assets/homeAura/HomeAura-spritesheet.png')
    aura.grid = anim8.newGrid(32, 50, aura.spritesheet:getWidth(), aura.spritesheet:getHeight())

    aura.moveAnimations = {}
    aura.moveAnimations.down = anim8.newAnimation(aura.grid('1-4', 1), 0.2)
    aura.moveAnimations.left = anim8.newAnimation(aura.grid('1-4', 2), 0.2)
    aura.moveAnimations.right = anim8.newAnimation(aura.grid('1-4', 3), 0.2)
    aura.moveAnimations.up = anim8.newAnimation(aura.grid('1-4', 4), 0.2)
    
    aura.animate = aura.moveAnimations.down

    walls = {}
    if bedroomMap.layers["Walls"] then
        for i, obj in pairs(bedroomMap.layers["Walls"].objects) do
            local wall = world:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
            wall:setType('static')
            table.insert(walls, wall)
        end
    end
end

function love.update(dt)
    local isPlayerMoving = false

    local vx = 0
    local vy = 0

    if love.keyboard.isDown("right") then
        vx = aura.speed
        aura.animate = aura.moveAnimations.right
        isPlayerMoving = true
    elseif love.keyboard.isDown("left") then
        vx = - aura.speed
        aura.animate = aura.moveAnimations.left
        isPlayerMoving = true
    elseif love.keyboard.isDown("up") then
        vy = - aura.speed
        aura.animate = aura.moveAnimations.up
        isPlayerMoving = true
    elseif love.keyboard.isDown("down") then
        vy = aura.speed
        aura.animate = aura.moveAnimations.down
        isPlayerMoving = true
    end

    aura.collider:setLinearVelocity(vx, vy)

    if isPlayerMoving == false then
        aura.animate:gotoFrame(2)
    end

    world:update(dt)
    aura.x = aura.collider:getX() - 16
    aura.y = aura.collider:getY() - 25

    aura.animate:update(dt)
end

function love.draw()
    bedroomMap:draw()
    aura.animate:draw(aura.spritesheet, aura.x, aura.y)
    --world:draw()
    --love.graphics.print("x = "..aura.x, 0, 0)
    --love.graphics.print("\ny = "..aura.y, 0, 0)
end