
local bea = 0
local angery = false
local angery2 = false
function onBeatHit()

        if curBeat == 80 then
bea = 1
end
        if curBeat == 464 then
bea = -1
end
        if curBeat == 468 then
angery = true
angery2 = true
end
        if curBeat == 472 then
angery = false
angery2 = true
bea = 1
end
        if curBeat % 2 == 0 and bea == 1 then
XA = 30
angel = 3
runTimer('sheesh', 0.01)
end
        if curBeat % 4 == 0 and bea == 1 then
XA = -30
angel = -3
runTimer('sheesh2', 0.01)
        end

    end

function onTimerCompleted(tag)
if tag == 'sheesh' then
        doTweenAngle('90', 'camHUD', angel, 0.3, 'circOut')
        doTweenX('91', 'camHUD', XA, 0.2, 'linear')
        doTweenAngle('92', 'camGame', angel, 0.3, 'circOut')
        doTweenX('93', 'camGame', XA, 0.2, 'linear')
elseif tag == 'sheesh2' then
        doTweenAngle('090', 'camHUD', angel, 0.3, 'circOut')
        doTweenX('91', 'camHUD', XA, 0.2, 'linear')
        doTweenAngle('92', 'camGame', angel, 0.3, 'circOut')
        doTweenX('93', 'camGame', XA, 0.2, 'linear')
end
end

function onUpdate()

doTweenAngle('1', 'camHUD', 0, 0.1, 'linear')
doTweenAngle('2', 'camGame', 0, 0.1, 'linear')
        doTweenX('3', 'camGame', 0, 0.1, 'linear')
        doTweenX('4', 'camHUD', 0, 0.1, 'linear')
        doTweenY('03', 'camGame', 0, 0.1, 'linear')
        doTweenY('04', 'camHUD', 0, 0.1, 'linear')

end


function onTweenCompleted(tag)
if tag == '90' then
        doTweenY('030', 'camGame', -30, 0.3, 'linear')
        doTweenY('040', 'camHUD', -30, 0.2, 'linear')
elseif tag == '090' then
        doTweenY('030', 'camGame', 30, 0.3, 'linear')
        doTweenY('040', 'camHUD', 30, 0.2, 'linear')
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if angery == true then
		triggerEvent('Add Camera Zoom', '0.015', '0.015')
end
    local luckyRoll50 = math.random(1, 50)
    local luckyRoll51 = math.random(1, 50)
if angery2 == true then
        if (luckyRoll50 >= 25) then
            cameraShake('hud', 0.03, 0.03);
    end
        if (luckyRoll51 >= 25) then
            cameraShake('game', 0.03, 0.03);
end
end
end