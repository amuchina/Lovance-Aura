_G.love = require("love")

local Controlls = {}

function Controlls.new(Map,world,aura,objects,queryBoxs)
    local controlls = {}

    function controlls.doControlls()
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

            -- teleport controls

            if queryBox.teleport ~= nil then
                if queryBox:enter('Player') then
                    if queryBox.class == 'Teleport' then
                        if queryBox.queryDirection == aura.dir then
                            queryBoxs = {}
                            objects = {}
                            Map = sti(queryBox.teleport)
                            aura = Aura.new(300,300,world) --fix
                            objects = Objects.new(Map,world)
                            queryBoxs = QueryBoxs.new(Map,world)
                            return true
                        end
                    end
                end
            end
        end

        -- queryBoxs interactions
        
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
                    Map.layers[aura.interact.name].visible = false
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
    end
    return controlls
end

return Controlls

