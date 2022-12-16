
--script by letter D
local More = 0
local L = true --L stand for level
local L2 = true
local L3 = true
local L4 = true
local L5 = true
local L6 = true
local L7 = true
local L8 = true
local L9 = true
function onCreatePost()
makeLuaSprite('unMBar', 'darkroom/mechanic stuff/fearbarback', 450,250)
setObjectCamera('unMBar','other')
addLuaSprite('unMBar',true)

makeLuaSprite('Bar', '', getProperty('unMBar.x'),getProperty('unMBar.y'))
setObjectCamera('Bar','other')
makeGraphic('Bar', 98, 1,'009292')
addLuaSprite('Bar',true)

	makeAnimatedLuaSprite('unMBar2', 'darkroom/mechanic stuff/fearbarfront', getProperty('unMBar.x') - 45,getProperty('unMBar.y') - 30);
	addAnimationByPrefix('unMBar2', 'fear', 'darkfear', 24, true)
        scaleObject('unMBar2', 1, 1);
setObjectCamera('unMBar2','other')
	objectPlayAnimation('unMBar2', 'fear', true)
addLuaSprite('unMBar2',true)

setProperty('unMBar.angle', 90)
setProperty('unMBar2.angle', 90)
setProperty('Bar.angle', 90)

end
function onUpdate()
        setGraphicSize('Bar',98/1.8 * 1,200/1.132* More)

end

function noteMiss(id, direction, noteType, isSustainNote)
if More <= 3 then
More = More + 0.0030
end
    end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if More >= 2.5 then
More = More - 0.0023
end
end
function opponentNoteHit()
if getProperty('health') >= 0.1 then
setProperty('health',getProperty('health') - 0.0009)

if More >= 0.35 and L == true then
setProperty('health',getProperty('health') - 0.001)
end
if More >= 0.5 and L2 == true then
L = false
setProperty('health',getProperty('health') - 0.003)
end
if More >= 1 and L3 == true then
setProperty('health',getProperty('health') - 0.006)
L2 = false
end
if More >= 1.3 and L4 == true then
L3 = false
setProperty('health',getProperty('health') - 0.009)
end
if More >= 1.5 and L5 == true then
L4 = false
setProperty('health',getProperty('health') - 0.01)
end
if More >= 1.7 and L6 == true then
L5 = false
setProperty('health',getProperty('health') - 0.012)
end
if More >= 2 and L7 == true then
L6 = false
setProperty('health',getProperty('health') - 0.014)
end
if More >= 2.3 and L8 == true then
L7 = false
setProperty('health',getProperty('health') - 0.018)
end
if More >= 2.5 and L9 == true then
L8 = false
setProperty('health',getProperty('health') - 0.023)
end
end
if More <= 2.5 then
More = More + 0.0025

end
end



function onBeatHit()
if getProperty('health') >= 0.1 then
if More >= 0.35 and L == true then
setProperty('health',getProperty('health') - 0.003)

end
if More >= 0.5 and L2 == true then
L = false

setProperty('health',getProperty('health') - 0.005)
end
if More >= 1 and L3 == true then
setProperty('health',getProperty('health') - 0.013)
L2 = false

end
if More >= 1.3 and L4 == true then
L3 = false

setProperty('health',getProperty('health') - 0.017)
end
if More >= 1.5 and L5 == true then
L4 = false

setProperty('health',getProperty('health') - 0.025)
end
if More >= 1.7 and L6 == true then
L5 = false

setProperty('health',getProperty('health') - 0.03)
end
if More >= 2 and L7 == true then
L6 = false

setProperty('health',getProperty('health') - 0.04)
end
if More >= 2.3 and L8 == true then
L7 = false
setProperty('health',getProperty('health') - 0.043)
end
if More >= 2.5 and L9 == true then
L8 = false
setProperty('health',getProperty('health') - 0.043)
end
end
end