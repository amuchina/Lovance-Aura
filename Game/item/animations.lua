_G.love = require("love")
_G.anim8 = require 'libs/anim8'
_G.sti = require 'libs/sti'
local Animations = {}

function Animations.new(Map)

    if Map.properties["hasAnimations"] == nil then
        return nil
    end

    local animations = {
        x = Map.properties["animX"],
        y = Map.properties["animY"]
    }
    animations.spritesheet = love.graphics.newImage(Map.properties["dirPNG"])
    animations.grid = anim8.newGrid(52, 52, animations.spritesheet:getWidth(), animations.spritesheet:getHeight())
    animations.frames =  anim8.newAnimation(animations.grid('1-'..Map.properties["frameNumber"], 1), 0.2)

    animations.animate = animations.frames
    return animations
end

return Animations