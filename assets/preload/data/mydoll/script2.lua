local angleshit = 1;
local anglevar = 1
local move = true
local move2 = false
function onBeatHit()

    if curBeat > 63 then
if move == true then
        if curBeat % 2 == 0 then
            angleshit = anglevar
else
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('animatedicon.angle',angleshit*3)
        setProperty('animatedbficon.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
        doTweenX('t', 'animatedicon', -angleshit*8, crochet*0.001, 'linear')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('t1', 'animatedbficon', -angleshit*8, crochet*0.001, 'linear')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')

end
end
    if curBeat == 128 then
move = false
end
    if curBeat == 192 then
move = true

end
end


function opponentNoteHit()

        health = getProperty('health')
        if getProperty('health') > 0.5 then
            setProperty('health', health- 0.03);
        end
    end


function onStepHit()
if curStep == 352 then
move2 = true
end
if curStep %16 == 0 and move2 == true then

triggerEvent('Add Camera Zoom', '0.016', '0.7')

end
end