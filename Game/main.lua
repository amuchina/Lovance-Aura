_G.love = require("love")
_G.scale = 2
_G.offsetx = 0
_G.offsety = -70
_G.flag = false
_G.string = ''
_G.contChar = 1
_G.w = 0
_G.h = 0
_G.mapW = 0
_G.mapH = 0


function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    st = {}
    st.door = love.audio.newSource("st/dooropen.wav", "static")
    st.music = love.audio.newSource("st/main_ost_aura_home.wav", "stream")
    st.music:setLooping(true)

    st.music:play()

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
    STI = require 'libs/sti'
 
    Map = sti("maps/firstWorld/Aura'sHouse/groundFloorHall/map.lua")
    MapTo = ''

    Aura = require 'aura'
    aura = Aura.new(Map.properties.spawnX,Map.properties.spawnY,world,"down","maps/firstWorld/Aura'sHouse/groundFloorHall/map.lua")

    Objects = require 'item/objects'
    objects = Objects.new(Map,world)

    QueryBoxs = require 'item/queryBoxs'
    queryBoxs = QueryBoxs.new(Map,world)

    Controlls = require 'item/controlls'
    controlls = Controlls.new(Map,world,aura,objects,queryBoxs)
    
    Animations = require 'item/animations'
    animations = Animations.new(Map)

    camera = require 'libs/camera'
    cam = camera()


end

function love.update(dt)
    local isPlayerMoving = false

    local vx = 0
    local vy = 0

    if not aura.isTeleporting then
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
        
        aura.animate:update(dt)
        if animations ~= nil then
            animations.animate:update(dt)
        end
        
        if aura.currentMap.match( aura.currentMap,'^(maps/%a+/map.lua)$') then
            -- Update camera position
            cam:lookAt(aura.x, aura.y)

            -- This section prevents the camera from viewing outside the background
            -- First, get width/height of the game window
            w = love.graphics.getWidth()
            h = love.graphics.getHeight()

            -- Left border
            if cam.x < w/2 then
                cam.x = w/2
            end

            -- Top border
            if cam.y < h/2 then
                cam.y = h/2
            end

            -- Get width/height of background
            mapW = Map.width * Map.tilewidth *2
            mapH = Map.height * Map.tileheight *2

            -- Right border
            if cam.x > (mapW - w/2) then
                cam.x = (mapW - w/2)
            end
            -- Bottom border
            if cam.y > (mapH - h/2 + offsety * scale) then
                cam.y = (mapH - h/2 + offsety * scale)
            end
            

        else
            --[no cam
        end

        flag = controlls.doControlls(flag)
    else
        queryBoxs = {}
        objects = {}
        world:destroy()
        world = wf.newWorld(0, 0)
        world:addCollisionClass('Solid')
        world:addCollisionClass('Player')
        world:addCollisionClass('Ghost', {ignores = {'Player'}})
        world:addCollisionClass('Teleport', {ignores = {'Player'}})
        world:addCollisionClass('Pickable')
        STI:flush()
        
        MapTo = aura.teleportingTo
        Map = STI.__call(_,MapTo)
        aura = Aura.new(aura.teleportX,aura.teleportY,world,aura.dir,aura.teleportingTo)
        objects = Objects.new(Map,world)
        queryBoxs = QueryBoxs.new(Map,world)
        controlls = Controlls.new(Map,world,aura,objects,queryBoxs)
        animations = Animations.new(Map,MapTo)
        st.door:play()
    end
end

function love.draw()
    cam:attach()
    if aura.currentMap.match( aura.currentMap,'^(maps/%a+/map.lua)$') then

        if(cam.x < w/2) and (cam.y < h/2) then
            Map:draw(offsetx, offsety, scale, scale)
        end

        if(cam.x >= w/2) and (cam.y < h/2) then
            Map:draw(offsetx + (w/2 - cam.x) / 2, offsety, scale, scale)
        end

        if(cam.x < w/2) and (cam.y >= h/2) then
            Map:draw(offsetx, offsety + (h/2 - cam.y) / 2, scale, scale)
        end

        if(cam.x >= w/2) and (cam.y >= h/2) then
            Map:draw(offsetx + (w/2 - cam.x) / 2, offsety + (h/2 - cam.y) / 2, scale, scale)
        end
    else
        Map:draw(offsetx, offsety, scale, scale)
    end
    if animations ~= nil then
        animations.animate:draw(animations.spritesheet, animations.x, animations.y, 0, scale)
    end
    aura.animate:draw(aura.spritesheet, aura.x, aura.y)
    love.graphics.print(w, 0, 0)
    love.graphics.print(h, 0, 20)
    love.graphics.print(mapW, aura.x, aura.y + 40)
    love.graphics.print(mapH, aura.x, aura.y + 60)
    love.graphics.print(aura.x, aura.x, aura.y + 80)
    love.graphics.print(aura.y, aura.x, aura.y + 100)
    love.graphics.print(cam.x, aura.x, aura.y + 120)
    love.graphics.print(cam.y, aura.x, aura.y + 140)
    if aura.canInteract then
        if aura.showInteractBox then   
            love.graphics.draw(interactBox, 160, 460, nil, 5, 4.6)
            love.graphics.setColor(0, 0, 0)
            for i = 1, contChar do
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
                if contChar < #aura.interactTextTable then
                    contChar = contChar + 1
                    
                end
            end
        else
            contChar = 1
        end
        love.graphics.setColor(255, 255, 255)
    end
    cam:detach()
end