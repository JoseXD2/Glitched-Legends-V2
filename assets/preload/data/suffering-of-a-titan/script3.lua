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
		objectPlayAnimation('pibby', 'idlep', true);
 setProperty('pibby.alpha', 0);
        end
        if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then
		objectPlayAnimation('titanraven','idle', true);
	end
	if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then
		objectPlayAnimation('titanstar','idle', true);
	end
	if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then
		objectPlayAnimation('titanbeast','idleb', true);
	end
	if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then
		objectPlayAnimation('titancyborg','idlecy', true);
	end
	if curBeat % 1 == 0 and curStep > 0 and curStep < 15000 then
		objectPlayAnimation('fires2','firett', true);
	end
        if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then
		objectPlayAnimation('batman','idlebat', true);
	end
        if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then
		objectPlayAnimation('justice','idleleague', true);
	end
function onStepHit()
	if curStep == 0 then
		objectPlayAnimation('pibby', 'idlep', true);
                setProperty('pibby.alpha', 0);
end

if curStep == 0 then
		objectPlayAnimation('titanraven','idle', true);
                setProperty('titanraven.alpha', 1);
                setProperty('titanportal.alpha', 0);
end

if curStep == 0 then
		objectPlayAnimation('titanstar','idle', true);
                setProperty('titanf.alpha',0);
                setProperty('titanstar.alpha', 1);
               end
if curStep ==  0 then
		objectPlayAnimation('titanbeast','idleb', true);
                setProperty('titanbeastintro.alpha',0);
                setProperty('titanbeast.alpha', 1);
               end
if curStep ==  0 then
		objectPlayAnimation('fires2','firett', true);
                setProperty('fires2.alpha', 1);
               end
if curStep ==  0 then
		objectPlayAnimation('batman','idlebat', true);
                setProperty('fires2.alpha', 1);
               end
if curStep ==  0 then
		objectPlayAnimation('justice','idleleague', true);
                setProperty('justice.alpha', 1);
               end
end
end
