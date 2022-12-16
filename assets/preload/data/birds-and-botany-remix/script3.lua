local eat = false
function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('gardenanimated','idle', true);
                objectPlayAnimation('gardenanimated0','idle', true);
                objectPlayAnimation('gardenanimated3','idle', true);
                objectPlayAnimation('gardenanimated4','idle',true);
                objectPlayAnimation('gardenanimated5','idle',true);
end
    if curBeat == 131 then
eat = true
end
    if curBeat == 464 then
eat = false
end
        if curBeat % 1 == 0 and eat == true then
			setProperty('health', getProperty('health')- 0.035)
        end
end

function onStepHit()
	if curStep == 448 then
		setProperty('gardenanimated4.alpha', 1);
                setProperty('gardenanimated3.alpha', 1);
                setProperty('gardenanimated5.alpha', 1);
end
end