
function onCreatePost()

    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
makeLuaSprite('i', '', 1270, 670)
makeGraphic('i', 100, 100, 'FF0500')
setProperty ('i.alpha', 0)
addLuaSprite('i', true)
end
function onUpdate()


	   if (getMouseX('camGame') > getProperty('i.x') - 200 and getMouseX('camGame') < getProperty('i.x')) and (getMouseY('camGame') > getProperty('i.y') - 200 and getMouseY('camGame') < getProperty('i.y') - 90 and mousePressed('left')) or keyjustPressed('space') then
loadSong('blammed', hard);
end
end

 
