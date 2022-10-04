_G.love = require("love")
_G.scale = 2
_G.offsetx = 0
_G.offsety = -70
_G.flag = false
_G.string = ''

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    wf = require 'libs/windfield'
    world = wf.newWorld(0, 0)
    world:addCollisionClass('Solid')
    world:addCollisionClass('Player')
    world:addCollisionClass('Ghost', {ignores = {'Player'}})
    world:addCollisionClass('Pickable')

    interactBox = love.graphics.newImage("assets/UI/dialogbox_default.png")
    interactTextFont = love.graphics.newFont("assets/fonts/SegaArcadeFont-Regular.ttf", 28)
    love.graphics.setFont(interactTextFont)

    anim8 = require 'libs/anim8'
    sti = require 'libs/sti'

    bedroomMap = sti('maps/bedroom/map.lua')
    
    aura = {}

    aura.x = 300
    aura.y = 300
    aura.collider = world:newBSGRectangleCollider(aura.x, aura.y, 32, 20, 0)
    aura.collider:setFixedRotation(true)
    aura.collider:setCollisionClass('Player')
    aura.canInteract = false
    aura.interact = { name = '', dir = '', class = ''}
    aura.interactTextTable = {}
    aura.showInteractBox = false

    aura.dir = "down"
    
    aura.speed = 150
    
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
            queryBox.queryDirection = obj.properties.queryDirection
            queryBox.queryString = obj.properties.queryString
            queryBox.destroyed = false
            
            table.insert(queryBoxs, queryBox)
        end
    end
end

function love.update(dt)
    local isPlayerMoving = false

    local vx = 0
    local vy = 0

    if love.keyboard.isDown("right","d") then
        aura.dir = "right"
        vx = aura.speed
        aura.animate = aura.moveAnimations.right
        isPlayerMoving = true
    elseif love.keyboard.isDown("left","a") then
        aura.dir = "left"
        vx = - aura.speed
        aura.animate = aura.moveAnimations.left
        isPlayerMoving = true
    elseif love.keyboard.isDown("up","w") then
        aura.dir = "up"
        vy = - aura.speed
        aura.animate = aura.moveAnimations.up
        isPlayerMoving = true
    elseif love.keyboard.isDown("down","s") then
        aura.dir = "down"
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

    for _, queryBox in pairs(queryBoxs) do
        for _, object in pairs(objects) do
            if not queryBox.destroyed then
                if queryBox:enter('Player') then
                    aura.canInteract = true
                    if queryBox.name == object.name then
                        if object.class == 'Pickable' then
                            if queryBox.queryDirection == aura.dir then
                                aura.interact.name = queryBox.name
                                aura.interact.dir = queryBox.queryDirection
                                aura.interact.class = object.class
                            end
                        else
                            if queryBox.queryDirection == aura.dir then
                                aura.interact.dir = queryBox.queryDirection
                                aura.interact.class = object.class
                            end
                        end
                    end

                    if not queryBox.destroyed then
                        for i = 1, #queryBox.queryString do 
                            aura.interactTextTable[i] = queryBox.queryString:sub(i, i)
                        end
                    end
                end
                if queryBox:stay('Player') then
                    if not queryBox.destroyed then
                        for i = 1, #queryBox.queryString do 
                            aura.interactTextTable[i] = queryBox.queryString:sub(i, i)
                        end
                        aura.canInteract = true
                    else
                        aura.canInteract = false
                    end
                    if aura.interact.name ~= '' then
                        local f = false;
                        if aura.interact.dir == aura.dir then
                            f = true;
                        end
                        if not f then
                            aura.interact.name = ''
                        end
                    elseif queryBox.name == object.name then
                        if object.class == 'Pickable' then
                            if queryBox.queryDirection == aura.dir then
                                aura.interact.name = queryBox.name
                                aura.interact.dir = queryBox.queryDirection
                                aura.interact.class = object.class
                            end
                        else
                            if queryBox.queryDirection == aura.dir then
                                aura.interact.dir = queryBox.queryDirection
                                aura.interact.class = object.class
                            end
                        end
                    end
                end
            end
            if queryBox:exit('Player') then
                aura.showInteractBox = false
                aura.interact.name = ''
                aura.interactTextTable = {}
                aura.canInteract = false
            end
        end
    end

    if aura.canInteract then
        if love.keyboard.isDown('return') then
            if aura.interact.name ~= '' then
                aura.showInteractBox = true;
            end
            if aura.interact.class == nil then
                aura.showInteractBox = true;
            end

        end
        if love.keyboard.isDown('z') then
            if aura.interact.name ~= '' then
                bedroomMap.layers[aura.interact.name].visible = false

                for _, queryBox in pairs(queryBoxs) do
                    if queryBox.name == aura.interact.name then
                        queryBox.destroyed = true
                        aura.showInteractBox = false
                    end
                end
                for _, object in pairs(objects) do
                    if object.name == aura.interact.name then
                        object:setCollisionClass('Ghost')
                        aura.interact.name = ''
                        aura.interact.dir = ''
                    end
                end
            end
        end
    end

    aura.animate:update(dt)
end

function love.draw()
    bedroomMap:draw(offsetx, offsety, scale, scale)
    aura.animate:draw(aura.spritesheet, aura.x, aura.y)
    if aura.canInteract then
        love.graphics.print("can: true"..aura.interact.name, 0, 0)
        if aura.showInteractBox then   
            love.graphics.draw(interactBox, 160, 460, nil, 5, 4.6)
            love.graphics.setColor(0, 0, 0)
            for i = 1, #aura.interactTextTable do
                local j = i - 39
                if i < 40 then
                    if aura.interactTextTable[i] == 'i' then 
                        love.graphics.print(aura.interactTextTable[i], 180 + (i * 10.7), 480) 
                    else
                        love.graphics.print(aura.interactTextTable[i], 180 + (i * 10.5), 480)
                    end 
                else
                    if aura.interactTextTable[i] == 'i' then 
                        love.graphics.print(aura.interactTextTable[i], 180 + (j * 10.7), 510) 
                    else
                        love.graphics.print(aura.interactTextTable[i], 180 + (j * 10.5), 510)
                    end 
                end   
            end
        end
        love.graphics.setColor(255, 255, 255)
    else
        love.graphics.print("can: false"..aura.interact.name, 0, 0)
    end
    if flag then
        love.graphics.print("flag: true", 0, 20)
    else
        love.graphics.print("flag: false", 0, 20)
    end
    love.graphics.print("dir: " ..aura.dir, 0, 40)
end