

timer = 3
---when the timer for the cam return to normal state.

tim = 5
--this is the timer for how fast do you want the cam to get back to normal


function onCreatePost()
doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
doTweenColor('dad', 'dad', '000000', 0.000001, 'linear')
doTweenColor('gf', 'gf', '000000', 0.0000001, 'linear')
doTweenAlpha('animatedico', 'red', 0, 0.0000001, 'linear')
doTweenAlpha('animn', 'uglyHB', 0, 0.0000001, 'linear')
	   makeLuaSprite('did', '', 0, 0);
        makeGraphic('did',5000,3000,'000000')
              setObjectCamera('did', 'hud')
	      addLuaSprite('did', false);



	runTimer('get back', timer)
end


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'get back' then
		doTweenAlpha('dd','did', 0.8, tim,'linear')
end
end

function onStepHit()
if curStep == 266 then
		doTweenAlpha('dd','did', 1, 0.001,'linear')
elseif curStep == 320 then

doTweenAlpha('ao', 'camHud', 0, 5, 'linear')
doTweenAlpha('ao0', 'camOther', 0, 5, 'linear')

elseif curStep == 384 then
		doTweenAlpha('dd','did', 0, 10,'linear')
elseif curStep == 448 then
doTweenColor('dad', 'dad', 'ffffff', 0.000001, 'linear')
doTweenColor('gf', 'gf', 'ffffff', 0.0000001, 'linear')
doTweenAlpha('ao', 'camHud', 1, 0.01, 'linear')
doTweenAlpha('ao0', 'camOther', 1, 0.01, 'linear')
doTweenAlpha('healthBar', 'healthBar', 1, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 1, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 1, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 1, 0.0000001, 'linear')
doTweenAlpha('animatedico', 'red', 1, 0.0000001, 'linear')
doTweenAlpha('animn', 'uglyHB', 1, 0.0000001, 'linear')
elseif curStep == 1858 then
		doTweenAlpha('dd','did', 1, 0.001,'linear')
doTweenAlpha('ao', 'camHud', 0, 0.1, 'linear')
doTweenAlpha('ao0', 'camOther', 0, 0.1, 'linear')
doTweenColor('dad', 'dad', '000000', 0.000001, 'linear')
doTweenColor('gf', 'gf', '000000', 0.0000001, 'linear')
doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
doTweenColor('dad', 'dad', '000000', 0.000001, 'linear')
doTweenColor('gf', 'gf', '000000', 0.0000001, 'linear')
doTweenAlpha('animatedico', 'red', 0, 0.0000001, 'linear')
doTweenAlpha('animn', 'uglyHB', 0, 0.0000001, 'linear')
doTweenAlpha('ak', 'gardenanimated5', 0, 0.0000001, 'linear')

elseif curStep == 1872 then
doTweenAlpha('dd', 'did', 0.9, 5, 'linear')
elseif curStep == 1970 then
		doTweenAlpha('dd','did', 1, 0.1,'linear')
end
end