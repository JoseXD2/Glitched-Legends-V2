function onCreate() 
	makeAnimatedLuaSprite('boton', 'dodge', 1150, 582.5);
	addAnimationByPrefix('boton', 'nonPress', 'nonPress', 24, false);
	addAnimationByPrefix('boton', 'Pressed', 'Pressed', 12, false);
	addLuaSprite('boton', false);
	setObjectCamera('boton', 'other');
end

function onUpdate(elapsed)
	if (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyPressed('space') then
		objectPlayAnimation('boton', 'Pressed', false);
	else
		objectPlayAnimation('boton', 'nonPress', false);
	end
end

