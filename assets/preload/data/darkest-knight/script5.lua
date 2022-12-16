



function opponentNoteHit()
	if dadName == 'batman_pibby' then
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.015);
    end
end
end

function onBeatHit()
    if curBeat == 32 then
doTweenAlpha('healthBar', 'healthBar', 1, 0.1, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 1, 0.1, 'linear')
doTweenAlpha('timeBar', 'timeBar', 1, 0.1, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 1, 0.1, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 0.1, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 1, 0.1, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 1, 0.1, 'linear')
doTweenAlpha('heaar', 'uglyHB', 1, 0.1, 'linear')
	doTweenAlpha('dvzvd','did', 0, 0.001,'linear')
    elseif curBeat == 224 then
doTweenAlpha('healtvhBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('hevaar', 'uglyHB', 0, 0.0001, 'linear')
doTweenAlpha('timeTvxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timveBar', 'timeBar', 0, 0.00001, 'linear')
doTweenAlpha('timeBfarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scorweTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('animatedfbficon', 'animatedbficon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedifcon', 'animatedicon', 0, 0.0000001, 'linear')
	doTweenAlpha('dvzd','did', 1, 0.001,'linear')
	runTimer('get back2', 2)
    elseif curBeat == 260 then
		doTweenAlpha('dd','did', 1, 0.0001,'linear')
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'get back2' then
		doTweenAlpha('dvzd','did', 0, 5,'linear')
end
end