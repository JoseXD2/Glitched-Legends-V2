

timer = 3
---when the timer for the cam return to normal state.

tim = 5
--this is the timer for how fast do you want the cam to get back to normal


function onCreatePost()

	   makeLuaSprite('did', '', 0, 0);
        makeGraphic('did',5000,3000,'000000')
              setObjectCamera('did', 'other')
	      addLuaSprite('did', true);


	runTimer('get back', timer)
end


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'get back' then
		doTweenAlpha('dd','did', 0, tim,'linear')
end
end

