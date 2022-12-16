function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.3 then
       setProperty('health', health- 0.005);
	end
end

local angleshit = 1.5;
local anglevar = 1.5;
function onBeatHit()
    if curBeat > 1 then
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
    end
end

function onStepHit()
if curStep == 1705 then
        triggerEvent('Camera Follow Pos','2800','700')
doTweenZoom('i', 'camGame', 1, 1, 'linear')
setProperty('defaultCamZoom', 1)
elseif curStep == 1728 then
        triggerEvent('Camera Follow Pos','','')
doTweenZoom('i', 'camGame', 0.4, 0.5, 'linear')
setProperty('defaultCamZoom', 0.4)
end
end