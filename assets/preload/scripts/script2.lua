--1F1D on Gamebanana made this script!

function onCreate()

--SHAPES & SIZES HERE

Thickness = .07 --Mess with these values until you get what you want.
Border = .05
Length = 1.965

if downscroll then
barX = 300
barY = 690
else
barX = 300
barY = 12.5
end
--TEXT CONFIG HERE

textX = 600
textY = barY --Change "barY" to a number for more positioning options
textSize = 20
textColor = 'FFFFFF' --These colors must be in hex codes


--COLORS & SHADING HERE

fillingBarColor = '000000' --These colors must be in hex codes
emptyBarColor = 'FFFFFF'
borderColor = '000000'

--Color shading options include "color", "colorShaded", "colorShadedReverse", "colorShadedDown", "colorShadedUp",

makeLuaSprite('border', 'colorShadedDown', barX - Border * 175, barY - Border * 165)
makeLuaSprite('emptyBar', 'color', barX, barY)
makeLuaSprite('fillBar', 'colorShadedDown', barX, barY)

addLuaSprite('border', true)
addLuaSprite('emptyBar', true)
addLuaSprite('fillBar', true)

setObjectCamera('border', 'hud')
setObjectCamera('emptyBar', 'hud')
setObjectCamera('fillBar', 'hud')

scaleObject('border', Length + Border, Thickness + Border)
scaleObject('emptyBar', Length, Thickness)
scaleObject('fillBar', Length, Thickness)

doTweenColor('borderColor', 'border', borderColor, 0.01)
doTweenColor('emptyBarColor', 'emptyBar', emptyBarColor, 0.01)
doTweenColor('fillBarColor', 'fillBar', fillingBarColor, 0.01)

if Border == 0 then
removeLuaSprite('border', true)
end

end

function onCreatePost()

makeLuaText("nametext", songName, 0, textX, barY)
setTextSize('nametext',  textSize)
setTextColor('nametext', textColor)
setTextAlignment('nametext', 'center')
addLuaText("nametext")

setProperty('timeBarBG.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeTxt.visible', false)

end

function onUpdate()
setTextString('nametext', getProperty('timeTxt.text'))
scaleObject('fillBar', Length * getProperty("songPercent"), Thickness)
end