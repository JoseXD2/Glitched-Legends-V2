--by letter D

function onStepHit()
    if curStep == 265 then
	   makeLuaSprite('didv', '', 0, 0);
        makeGraphic('didv',5000,3000,'000000')
              setObjectCamera('didv', 'hud')
	      addLuaSprite('didv', false);
doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
    elseif curStep == 447 then
		doTweenAlpha('degd','didv', 0, 1,'linear')
doTweenAlpha('healthBar', 'healthBar', 1, 1, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 1, 1, 'linear')
doTweenAlpha('timeBar', 'timeBar', 1, 1, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 1, 1, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 1, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 1, 1, 'linear')
end
end