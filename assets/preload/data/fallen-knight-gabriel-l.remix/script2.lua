
bet = false
now = false
function onBeatHit()
if curBeat == 136 then
now = true
bet = true
end
if bet == true then
        if curBeat %2 == 0 then
		triggerEvent('Add Camera Zoom', 0.04,0.05)
        doTweenAngle('090', 'camHUD', angel, 0.2, 'circOut')
        doTweenY('040', 'camHUD', -30, 0.2, 'circOut')

        doTweenAngle('080', 'camGame', angel, 0.2, 'circOut')
        doTweenY('030', 'camGame', -30, 0.2, 'circOut')
angel = 3
else
		triggerEvent('Add Camera Zoom', 0.04,0.05)
        doTweenAngle('090', 'camHUD', angel, 0.2, 'circOut')
        doTweenY('040', 'camHUD', -30, 0.2, 'circOut')

        doTweenAngle('080', 'camGame', angel, 0.2, 'circOut')
        doTweenY('030', 'camGame', -30, 0.2, 'circOut')

angel = -3
        end
    end
if curBeat == 552 then
bet = false
now = false
end
end


function onUpdate()
if now == true then
        doTweenY('04', 'camHUD', 30, 0.1, 'linear')
        doTweenAngle('09', 'camHUD', 0, 0.1, 'linear')

        doTweenY('03', 'camGame', 30, 0.1, 'linear')
        doTweenAngle('08', 'camGame', 0, 0.1, 'linear')
end
if now == false then

        doTweenY('04', 'camHUD', 0, 0.1, 'linear')

        doTweenAngle('09', 'camHUD', 0, 0.1, 'linear')

        doTweenY('03', 'camGame', 0, 0.1, 'linear')
        doTweenAngle('08', 'camGame', 0, 0.1, 'linear')
end
end


function onStepHit ()
if curStep == 545 then
		cameraFlash('other', '0xFFFFFF', 1, true)
elseif curStep == 609 then
		cameraFlash('other', '0xFFFFFF', 1, true)
elseif curStep == 673 then
		cameraFlash('other', '0xFFFFFF', 1, true)
elseif curStep == 801 then
		cameraFlash('other', '0xFFFFFF', 1, true)
elseif curStep == 1075 then
		cameraFlash('other', '0xFFFFFF', 1, true)
elseif curStep == 1185 then
		cameraFlash('other', '0xFFFFFF', 1, true)
elseif curStep == 1569 then
		cameraFlash('other', '0xFFFFFF', 1, true)
elseif curStep == 1825 then
		cameraFlash('other', '0xFFFFFF', 1, true)
elseif curStep == 2081 then
		cameraFlash('other', '0xFFFFFF', 1, true)
elseif curStep == 2209 then
		cameraFlash('other', '0xFFFFFF', 1, true)
elseif curStep == 2465 then
		cameraFlash('other', '0xFFFFFF', 1, true)
elseif curStep == 2720 then
		cameraFlash('other', '0xFFFFFF', 1, true)
end
end