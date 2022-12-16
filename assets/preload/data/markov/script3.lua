
function onStepHit()
	if curStep == 192 then
doTweenAlpha('c3k3kon', 'camHUD', 0.3, 1, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0.3, 1, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 0.3, 1, 'linear')
end
	if curStep == 400 then
doTweenAlpha('c3k3kon', 'camHUD', 0, 1, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 1, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 0, 1, 'linear')
end
	if curStep == 450 then
runTimer('off', 0.0001)
doTweenAlpha('c3k3kon', 'camHUD', 1, 0.001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 1, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 1, 0.0000001, 'linear')
end
	if curStep == 991 then
runTimer('on', 0.0001)
end
	if curStep == 1504 then
runTimer('off', 0.0001)
end
	if curStep == 1886 then
runTimer('on', 0.0001)
end
	if curStep == 2015 then
runTimer('off', 0.0001)
        end
	if curStep == 2143 then
runTimer('on', 0.0001)
        end
	if curStep == 2271 then
runTimer('off', 0.0001)
        end
	if curStep == 2656 then
runTimer('on', 0.0001)
        end
	if curStep == 2880 then
		cameraFlash('game', '0x000000', 999, true)
doTweenAlpha('c3k3kon', 'camHUD', 0, 0.01, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.01, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 0, 0.01, 'linear')
        end
end


function onTimerCompleted(tag)
if tag == 'on' then
		cameraFlash('game', '0x000000', 5, true)
		setCharacterX('boyfriend', 500);
               setProperty('boyfriend.visible',false)
               setProperty('waterback1.alpha', 0);
triggerEvent('Change Character', 'dad', 'mony_pibby_front')
	doTweenZoom('gamezoom', 'camGame', 0.8, 0.1, 'linear');
		setProperty('defaultCamZoom', 0.8);
elseif tag == 'off' then
		cameraFlash('game', '0x000000', 1, true)
		setCharacterX('boyfriend', 1370);
               setProperty('boyfriend.visible',true)
               setProperty('waterback1.alpha', 1);
triggerEvent('Change Character', 'dad', 'mony_pibby')
	doTweenZoom('gamezoom', 'camGame', 0.5, 0.1, 'linear');
		setProperty('defaultCamZoom', 0.5);

end
end