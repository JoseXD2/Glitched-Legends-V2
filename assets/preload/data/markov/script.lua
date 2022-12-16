

timer = 15
---when the timer for the cam return to normal state.

tim = 5
--this is the timer for how fast do you want the cam to get back to normal


function onCreatePost()

doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 0, 0.0000001, 'linear')
doTweenAlpha('c3k3kon', 'camHUD', 0, 0.0000001, 'linear')
		setCharacterX('boyfriend', 500);
               setProperty('boyfriend.visible',false)
               setProperty('waterback1.alpha', 0);
	   makeLuaSprite('did', '', 0, 0);
        makeGraphic('did',5000,3000,'000000')
              setObjectCamera('did', 'other')
setObjectOrder ('did', 1)
	      addLuaSprite('did', true);


	runTimer('get back', timer)
end


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'get back' then
		doTweenAlpha('dd','did', 0, tim,'linear')
end
end


function opponentNoteHit()
	if dadName == 'mony_pibby' then
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.015);
    end
end
end