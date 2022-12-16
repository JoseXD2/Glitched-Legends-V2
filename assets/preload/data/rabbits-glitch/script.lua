
function onStepHit()
if curStep == 542 then
        setProperty('Ssc.alpha', 0)
        setProperty('animatedbficono.alpha', 0)
        setProperty('animatedbficon.alpha', 1)
        setProperty('oanimatedicon.alpha', 0)
        setProperty('animatedicon.alpha', 1)
    setProperty('olduglyHB.alpha', 0)


triggerEvent('Change Character', 'bf', 'bf_pibby')

    doTweenAlpha('f1', 'theaterback4', 0, 0.1, 'linear')
    doTweenAlpha('f2', 'theaterback5', 1, 0.1, 'linear')
    doTweenAlpha('f3', 'characteroswalds2', 1, 0.1, 'linear')
    doTweenAlpha('f4', 'characteroswalds3', 1, 0.1, 'linear')
    doTweenAlpha('f5', 'theaterback6', 1, 0.1, 'linear')
    setCharacterY('dad', -200);
    elseif curStep == 672 then
triggerEvent('Change Character', 'bf', 'bf_pibby_alt')

    end
end



function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('characteroswalds','idle', true);
                objectPlayAnimation('characteroswalds3','idle','personajes de butragas', true);
                objectPlayAnimation('characteroswalds2','idle', true);
    end
end
