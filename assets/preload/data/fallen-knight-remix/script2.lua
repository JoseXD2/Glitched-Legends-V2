
bet = true
function onBeatHit()
if curBeat >= 128 then
        if curBeat %2 == 0 and bet == true then
runTimer('sheesh', 0.01)
XA = 10
else

runTimer('sheesh2', 0.01)
XA = 10
        end
    end
if curBeat == 320 then
bet = false
end
if curBeat == 384 then
bet = true
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

