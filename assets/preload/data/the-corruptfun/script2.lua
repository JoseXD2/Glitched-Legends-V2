--by letter D
timer = 1
---when the timer for the cam return to normal state.

tim = 10
--this is the timer for how fast do you want the cam to get back to normal


function onCreate()

	   makeLuaSprite('did', '', 0, 0);
        makeGraphic('did',5000,3000,'000000')
              setObjectCamera('did', 'other')
	      addLuaSprite('did', true);
doTweenZoom('c', 'camGame', 0.5, 0.1, 'linear')
	runTimer('get back', timer)
end


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'get back' then

		doTweenAlpha('dd','did', 0, tim,'linear')
end
end

function onStepHit()
if curStep == 257 then

doTweenZoom('c1', 'camGame', 0.35, 0.1, 'linear')
setProperty('defaultCamZoom', 0.35)
end
end