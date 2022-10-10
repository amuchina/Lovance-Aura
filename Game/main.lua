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
    world:addCollisionClass('Teleport', {ignores = {'Player'}})
    world:addCollisionClass('Pickable')

    interactBox = love.graphics.newImage("assets/UI/dialogbox_default.png")
    interactTextFont = love.graphics.newFont("assets/fonts/SegaArcadeFont-Regular.ttf", 28)
    love.graphics.setFont(interactTextFont)

    anim8 = require 'libs/anim8'
    sti = require 'libs/sti'

    maps = {'maps/bedroom/map.lua', 'maps/firstFloorHall/map.lua'}

    Map = sti(maps[2])
    
    local x = 300
    local y = 300

    Aura = require 'aura'
    aura = Aura.new(x,y,world)

    Objects = require 'item/objects'
    objects = Objects.new(Map,world)

    QueryBoxs = require 'item/queryBoxs'
    queryBoxs = QueryBoxs.new(Map,world)

    Controlls = require 'item/controlls'
    controlls = Controlls.new(Map,world,aura,objects,queryBoxs)
end

function love.update(dt)
    local isPlayerMoving = false
    local isTeleporting = false

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

    isTeleporting = controlls.doControlls()
    if isTeleporting then
        
    end
    
    aura.animate:update(dt)
    
end

function love.draw()
    Map:draw(offsetx, offsety, scale, scale)
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