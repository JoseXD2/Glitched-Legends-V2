

timer = 5
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
if curBeat >= 160 then
        if curBeat % 1 == 0 then
            angleshit = anglevar;
end
        if curBeat % 2 == 0 then
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
    end
end

function opponentNoteHit()
	if dadName == 'vicky' then
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.015);
    end
end
end

function onStepHit()
if curStep == 1408 then

		doTweenAlpha('d09d','did', 1, 0.001,'linear')
triggerEvent('Change Character', 'gf', 'timmy_pibby_turner')
elseif curStep == 1952 then
		doTweenAlpha('d0','did', 1, 0.001,'linear')

end
end
function onTweenCompleted(tag)
	if tag == 'd09d' then

		doTweenAlpha('d0d','did', 0, 5,'linear')

end
end
