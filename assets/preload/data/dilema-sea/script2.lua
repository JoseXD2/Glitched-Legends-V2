
function onBeatHit()
	if curBeat % 2 == 0 then

		objectPlayAnimation('bkanimated','dance', true);
		objectPlayAnimation('bkanimated2','dance', true);
		objectPlayAnimation('bkanimated3','dance', true);
                objectPlayAnimation('sponghouseaniamted3','idle', true);
                objectPlayAnimation('pibby','idlep', true);
                objectPlayAnimation('sponghouseaniamted8','idle', true);
        end
        end

function onCreatePost()
	   makeLuaSprite('did1', '', 0, 0);
        makeGraphic('did1',2790,980,'000000')
              setObjectCamera('did1', 'other')
    setProperty('did1.alpha', 0)
	      addLuaSprite('did1', true);

    setProperty('sponghouseaniamted', 0);
	   makeLuaSprite('d1', 'vignette2', 0, 0);
              setObjectCamera('d1', 'other')
    setProperty('d1.alpha', 0)
	      addLuaSprite('d1', false);

end

function onStepHit()
if curStep == 1088 then

		cameraFlash('game', '0x000000', 1, true)
doTweenColor('ww', 'dad', '464646', 0.1, 'linear')
doTweenColor('wwi', 'boyfriend', '464646', 0.1, 'linear')

    setProperty('d1.alpha', 1)
    setProperty('did1.alpha', 0.8)
doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedic3k3kon', 'uglyHB', 0, 0.0000001, 'linear')
	doTweenZoom('gamezoom', 'camGame', 0.6, 0.1, 'linear');
		setProperty('defaultCamZoom', 0.6);

end

if curStep == 1337 then
	doTweenZoom('gamezoom', 'camGame', 0.2, 0.1, 'linear');
		setProperty('defaultCamZoom', 0.2);
		cameraFlash('game', '0xffffff', 1, true)
doTweenColor('ww', 'dad', 'ffffff', 0.1, 'linear')
doTweenColor('wwi', 'boyfriend', 'ffffff', 0.1, 'linear')
    setProperty('d1.alpha', 0)
    setProperty('did1.alpha', 0.0)
doTweenAlpha('healthBar', 'healthBar', 1, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 1, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 1, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 1, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 1, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 1, 0.0000001, 'linear')
doTweenAlpha('animatedic3k3kon', 'uglyHB', 1, 0.0000001, 'linear')

end

if curStep == 1096 then

		objectPlayAnimation('bubbles','dance', true);
                setProperty('bubbles.alpha', 1);

end
if curStep == 1112 then
                setProperty('bubbles.alpha', 0);


end
if curStep == 1188 then
                setProperty('bubbles.alpha', 1);

		objectPlayAnimation('bubbles','dance', true);


end
if curStep == 1204 then
                setProperty('bubbles.alpha', 0);


end
if curStep == 1285 then
                setProperty('bubbles.alpha', 1);

		objectPlayAnimation('bubbles','dance', true);

end
if curStep == 1301 then
                setProperty('bubbles.alpha', 0);


end
end
