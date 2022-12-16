

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.015);
	end
end

-------
local angleshit = 1;
local anglevar = 1;
local on = true
function onBeatHit()
	if curBeat > 160 and on == true then
		triggerEvent('Add Camera Zoom', 0.04,0.05)

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*3)
		setProperty('camGame.angle',angleshit*3)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end
	if curBeat > 416 then
on = false
end
end
-- some of the code by bb-panzu.


function onStepHit()
	if curStep == 1950 then

		cameraFlash('game', '0x000000', 9990, true)
doTweenAlpha('ji', 'camHUD', 0, 0.01, 'linear')
doTweenAlpha('ji2', 'camOther', 0, 0.01, 'linear')

end
end