
function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('pibby', 'idlep', true);
		objectPlayAnimation('titancyborg','idlecy', true);
		objectPlayAnimation('titanraven','idle', true);
		objectPlayAnimation('titanstar','idle', true);
		objectPlayAnimation('titanbeast','idleb', true);


end
end

function onStepHit()

	if curStep == 50 then
doTweenX('bigx', 'titanportal.scale', 1, 1, 'linear')
doTweenY('bigy', 'titanportal.scale', 1, 1, 'linear')

    elseif curStep == 160 then
doTweenAlpha('ohlookitsravenfromthehitshowteentitansGO', 'titanraven', 1, 1, 'linear')
doTweenX('bigrx', 'titanraven.scale', 1, 1, 'linear')
doTweenY('bigry', 'titanraven.scale', 1, 1, 'linear')

doTweenX('samllx', 'titanportal.scale', 0, 2, 'linear')
doTweenY('smally', 'titanportal.scale', 0, 2, 'linear')

    elseif curStep == 178 then
		objectPlayAnimation('titanstar','intro', true);
                setProperty('titanstar.alpha', 1);

    elseif curStep == 185 then
setProperty('titanstar.x', 550)

    elseif curStep == 265 then
		objectPlayAnimation('titanbeast','intrb', true);
                setProperty('titanbeast.alpha',1);
    elseif curStep == 272 then
setProperty('titanbeast.y', 900)
setProperty('titanbeast.x', -650)

    elseif curStep == 544 then
		objectPlayAnimation('titancyborg','intecy', true);
                setProperty('titancyborg.alpha', 1);
    elseif curStep == 1650 then
doTweenY('x4', 'jumpcityback1f', 1100, 10, 'linear')
doTweenAngle('x5', 'jumpcityback1f', -30, 0.01, 'linear')
doTweenX('x3', 'jumpcityback1f', 1200, 10, 'linear')

    elseif curStep == 1729 then
		objectPlayAnimation('fires','introfire', true);
		cameraFlash('game', '0xFFFFFF', 5, true)
                setProperty('fires.alpha', 1);


    end
end