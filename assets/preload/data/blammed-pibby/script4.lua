--by letter D
zoom = 5
--the actuall zoom the begins as soon is the game star

timer = 3
---when the timer for the cam return to normal state.

tim = 3
--this is the timer for how fast do you want the cam to get back to normal


function onCreate()
	doTweenZoom('gamezoom', 'camGame', zoom, 0.1, 'quadInOut');
	   makeLuaSprite('did', '', 0, 0);
        makeGraphic('did',5000,3000,'000000')
              setObjectCamera('did', 'other')
	      addLuaSprite('did', true);
	runTimer('get back', timer)
end


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'get back' then
	doTweenZoom('gamezoom', 'camGame', 0.7, tim, 'quadInOut');
		doTweenAlpha('dd','did', 0, tim,'linear')
end
end