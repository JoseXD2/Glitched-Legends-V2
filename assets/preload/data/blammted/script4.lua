function onCreate()
	precacheImage('stages/titan_tower/raven_idle');
	precacheImage('stages/titan_tower/starfire_idle');
        precacheImage('stages/titan_tower/beastboy_idle');
        precacheImage('stages/titan_tower/idle_cyborg');
        precacheImage('stages/survivors/pibby');
 
    makeAnimationList();
end

function onBeatHit()
        if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then
		objectPlayAnimation('animatedcity','idle', true);
        end
if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then
		objectPlayAnimation('animatedcity2','idle', true);
		objectPlayAnimation('animatedcity3','idle', true);
        end

function onStepHit()
	if curStep == 0 then
		objectPlayAnimation('animatedcity','idle', true);
end
	if curStep == 0 then
		objectPlayAnimation('animatedcity2','idle', true);
		objectPlayAnimation('animatedcity3','idle', true);
  end
end
end
