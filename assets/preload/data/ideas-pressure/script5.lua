function onCreate()
	precacheImage('stages/titan_tower/raven_idle');
	precacheImage('stages/titan_tower/starfire_idle');
        precacheImage('stages/titan_tower/beastboy_idle');
        precacheImage('stages/titan_tower/idle_cyborg');
        precacheImage('stages/survivors/pibby');
 
    makeAnimationList();
end

function onBeatHit()
if curBeat % 2 == 0 and curStep > 663 and curStep < 15000 then
		objectPlayAnimation('lel','idle', true);
        setProperty('lel.alpha', 1);
        end
if curBeat % 2 == 0 and curStep > 670 and curStep < 15000 then
		objectPlayAnimation('lel','idle', true);
        setProperty('lel.alpha', 0);
        end
if curBeat % 2 == 0 and curStep > 1632 and curStep < 15000 then
		objectPlayAnimation('lel2','idle', true);
                  setProperty('lel2.alpha', 1);
        end
if curBeat % 2 == 0 and curStep > 1645 and curStep < 15000 then
		objectPlayAnimation('lel2','idle', true);
                  setProperty('lel2.alpha', 0);
        end

function onStepHit()
	if curStep == 663 then
		objectPlayAnimation('lel','idle', true);
        setProperty('lel.alpha', 1);
end
	if curStep == 670 then
        setProperty('lel.alpha', 0);
end
	if curStep == 1632 then
		objectPlayAnimation('lel2','idle', true);
                  setProperty('lel2.alpha',1);
end
	if curStep == 1645 then
		objectPlayAnimation('lel2','idle', true);
                  setProperty('lel2.alpha', 0);
end
end
end
