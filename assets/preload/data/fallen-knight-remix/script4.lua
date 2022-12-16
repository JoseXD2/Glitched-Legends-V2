

function onUpdate()

	   if (getMouseX('camGame') > getProperty('i2.x') + 200 and getMouseX('camGame') < getProperty('i2.x') + 300) and (getMouseY('camGame') > getProperty('i2.y') - 100 and getMouseY('camGame') < getProperty('i2.y') - 10 and mousePressed('left')) or keyjustPressed('space') then

loadSong('fallen-knight-(Gabriel-L.Remix)', hard);

end
end