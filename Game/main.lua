_G.love = require("love")
_G.scale = 2
_G.offsetx = 0
_G.offsety = -70
_G.flag = false

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    wf = require 'libs/windfield'
    world = wf.newWorld(0,0)
    world:addCollisionClass('Solid')
    world:addCollisionClass('Player')
    world:addCollisionClass('Ghost', {ignores = {'Player'}})
    world:addCollisionClass('Pickable')

    anim8 = require 'libs/anim8' --import anim8 lib
    sti = require 'libs/sti'    --import sti lib

    bedroomMap = sti('maps/bedroom/map.lua')

    aura = {}

    aura.x = 300;
    aura.y = 300;
    aura.collider = world:newBSGRectangleCollider(aura.x, aura.y, 32, 20, 0)
    aura.collider:setFixedRotation(true)
    aura.collider:setCollisionClass('Player')
    aura.canInteract = false;
    aura.interact = '';
    
    aura.speed = 150;
    
    aura.spritesheet = love.graphics.newImage('assets/homeAura/HomeAura-spritesheet.png')
    aura.grid = anim8.newGrid(32, 50, aura.spritesheet:getWidth(), aura.spritesheet:getHeight())

    aura.moveAnimations = {}
    aura.moveAnimations.down = anim8.newAnimation(aura.grid('1-4', 1), 0.2)
    aura.moveAnimations.left = anim8.newAnimation(aura.grid('1-4', 2), 0.2)
    aura.moveAnimations.right = anim8.newAnimation(aura.grid('1-4', 3), 0.2)
    aura.moveAnimations.up = anim8.newAnimation(aura.grid('1-4', 4), 0.2)
    
    aura.animate = aura.moveAnimations.down

    objects = {}

    if bedroomMap.layers["objects"] then
        for _, obj in pairs(bedroomMap.layers["objects"].objects) do
            local object = world:newRectangleCollider((obj.x * scale) + offsetx * scale, (obj.y * scale) + offsety * scale, obj.width * scale, obj.height * scale)
            object:setType('static')
            if obj.class == "Pickable" then 
                object:setCollisionClass('Pickable')
                object.class = obj.class
            end
            object.name = obj.name

            table.insert(objects, object)
        end
    end

    queryBoxs = {}

    if bedroomMap.layers["queryBoxs"] then
        for _, obj in pairs(bedroomMap.layers["queryBoxs"].objects) do
            local queryBox = world:newRectangleCollider((obj.x * scale) + offsetx * scale, (obj.y * scale) + offsety * scale, obj.width * scale, obj.height * scale)
            queryBox:setType('static')
            queryBox:setCollisionClass('Ghost')
            queryBox.name = obj.name
            table.insert(queryBoxs, queryBox)
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
    aura.y = aura.collider:getY() - 40

    if aura.collider:enter('Ghost') then
        aura.canInteract = true
    end

    for _, queryBox in pairs(queryBoxs) do
        for _, object in pairs(objects) do
            if queryBox:enter('Player') then
                if queryBox.name == object.name and object.class == 'Pickable' then
                    aura.interact = queryBox.name
                end
            end
            if queryBox:exit('Player') then
                aura.interact = ''
            end
        end
    end

    if aura.collider:exit('Ghost') then
        aura.canInteract = false
    end 

    if aura.canInteract then
        if love.keyboard.isDown('f') then
            if aura.interact ~= '' then
                bedroomMap.layers[aura.interact].visible = false
            end
        end 
    end



    aura.animate:update(dt)
end

function love.draw()
    bedroomMap:draw(offsetx, offsety, scale, scale)
    aura.animate:draw(aura.spritesheet, aura.x, aura.y)
    world:draw()
    if aura.canInteract then
        love.graphics.print("can: true"..aura.interact, 0, 0)
    else
        love.graphics.print("can: false"..aura.interact, 0, 0)
    end
    if flag then
        love.graphics.print("flag: true", 0, 20)
    else
        love.graphics.print("flag: false", 0, 20)
    end
end