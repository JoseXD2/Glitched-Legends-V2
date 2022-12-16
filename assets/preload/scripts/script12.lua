function onUpdate(elapsed)

	local lol = math.random(1,2)
	
	if (lol >= 1) then
	
		doTweenAngle('tt', 'iconP2', -0.2, stepCrochet*0.00000000009, 'circOut')
	end
	
	if (lol >= 2) then
	
		doTweenAngle('tt', 'iconP2', 2, stepCrochet*0.00000000009, 'circOut')
	end
	
	setTextString('healthText', 'Health: ' .. math.floor(getProperty("health") * 50))
	
	
	local songPos = getPropertyFromClass('Conductor', 'songPosition') / 800 --How long it will take.

	setTextString('misses', 'Misses: ' .. getProperty('songMisses'))
	setTextString('score', 'Score: ' .. getProperty('songScore'))
	setTextString('time', 'Time: ' .. getTextString('timeTxt'))
	
	end

    
        
        