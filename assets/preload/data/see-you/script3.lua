
function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('portaldt','idle', true);
                objectPlayAnimation('sponghouseaniamted','idle', true);
                objectPlayAnimation('sponghouseaniamted3','idle', true);
                objectPlayAnimation('pibby','idlep', true);

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
if curStep == 511 then

		cameraFlash('game', '0x000000', 5, true)
doTweenColor('ww', 'dad', '464646', 0.1, 'linear')
doTweenColor('wwi', 'boyfriend', '464646', 0.1, 'linear')
doTweenColor('wwp', 'pibby', '000000', 0.1, 'linear')
doTweenColor('wwip', 'sponghouseaniamted3', '000000', 0.1, 'linear')
doTweenColor('wwipp', 'sponghouseaniamted', '000000', 0.1, 'linear')
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
elseif curStep == 912 then
		cameraFlash('game', '0xffffff', 1, true)
doTweenColor('ww', 'dad', 'ffffff', 0.1, 'linear')
doTweenColor('wwi', 'boyfriend', 'ffffff', 0.1, 'linear')
doTweenColor('wwp', 'pibby', 'ffffff', 0.1, 'linear')
doTweenColor('wwip', 'sponghouseaniamted3', 'ffffff', 0.1, 'linear')
doTweenColor('wwipp', 'sponghouseaniamted', 'ffffff', 0.1, 'linear')
    setProperty('d1.alpha', 0.0)
    setProperty('did1.alpha', 0.0)
doTweenAlpha('healthBar', 'healthBar', 1, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 1, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 1, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 1, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 1, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 1, 0.0000001, 'linear')
doTweenAlpha('animatedic3k3kon', 'uglyHB', 1, 0.0000001, 'linear')
elseif curStep == 1039 then

		cameraFlash('game', '0x000000', 5, true)
doTweenColor('ww', 'dad', '464646', 0.1, 'linear')
doTweenColor('wwi', 'boyfriend', '464646', 0.1, 'linear')
doTweenColor('wwp', 'pibby', '000000', 0.1, 'linear')
doTweenColor('wwip', 'sponghouseaniamted3', '000000', 0.1, 'linear')
doTweenColor('wwipp', 'sponghouseaniamted', '000000', 0.1, 'linear')
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
elseif curStep == 1168 then

    setProperty('did1.alpha', 1)
end
end