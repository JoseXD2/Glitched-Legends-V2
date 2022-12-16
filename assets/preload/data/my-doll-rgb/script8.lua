local angleshit = 2;
local anglevar = 2
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
    if curBeat == 288 then
move = false

end
end
function onUpdatePost ()
        doTweenAngle('ttp', 'camGame', 0, 0.3, 'circOut')
        doTweenX('t01', 'camGame', 0, 0.3, 'linear')

        doTweenAngle('ttp0', 'camHUD', 0, 0.3, 'circOut')
        doTweenX('t010', 'camHUD', 0, 0.3, 'linear')
end

function opponentNoteHit()

        health = getProperty('health')
        if getProperty('health') > 0.5 then
            setProperty('health', health- 0.03);
        end
    end


function onStepHit()
if curStep == 64 then
move2 = true
end
if curStep == 256 then
move2 = true2
end
if curStep == 640 then
move2 = true
end

if curStep == 768 then
move2 = true2
end
if curStep == 1024 then
move2 = true
end
if curStep == 1280 then

move2 = false

end
if curStep %16 == 9 and move2 == true then
triggerEvent('Add Camera Zoom', '0.016', '0.7')
cameraShake('game', 0.03, 0.07);
cameraShake('Hud', 0.03, 0.07);
end
if curStep %16 == 9 and move2 == true2 then

runTimer ('3', 0.1, 3)

end
end

function onTimerCompleted (tag)
if tag == '3' then
triggerEvent('Add Camera Zoom', '0.019', '0.25')
cameraShake('game', 0.03, 0.07);
cameraShake('Hud', 0.03, 0.07);
end
end