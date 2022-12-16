function onCreate()
	precacheImage('stages/bk/spongehouse');
 
    makeAnimationList();
end

function onBeatHit()
        if curBeat % 2 == 0 and curStep > 4 and curStep < 15000 then
		objectPlayAnimation('villageanimated','idle', true);
                objectPlayAnimation('villageanimated2','idle', true);
                objectPlayAnimation('villageanimated3','idle', true);
        end
function onStepHit()
	if curStep == 0 then
		objectPlayAnimation('villageanimated','idle', true);
                objectPlayAnimation('villageanimated2','idle', true);
                objectPlayAnimation('villageanimated3','idle', true);
end
end
end
