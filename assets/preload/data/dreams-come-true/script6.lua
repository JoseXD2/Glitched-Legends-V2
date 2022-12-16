

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

local angleshit = 1.5;
local anglevar = 1.5;
function onBeatHit()
        if curBeat % 1 == 0 then
            angleshit = anglevar;
end
        if curBeat % 2 == 0 then
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('animatedicon.angle',angleshit*3)
        setProperty('animatedbficon.angle',angleshit*3)
        setProperty('animatedicont.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
        doTweenX('t', 'animatedicon', -angleshit*8, crochet*0.001, 'linear')
        doTweenX('t2', 'animatedicont', -angleshit*8, crochet*0.001, 'linear')
        doTweenX('t1', 'animatedbficon', -angleshit*8, crochet*0.001, 'linear')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
    end
function opponentNoteHit()
	if dadName == 'vicky' then
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.018);
    end
end
end