function onCreate()
	precacheImage('stages/looneyforest/bunbun');
 
    makeAnimationList();
end

function onBeatHit()
        if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then
		objectPlayAnimation('looneyanimated','idle', true);
                objectPlayAnimation('looneyanimated2','idle', true);
                objectPlayAnimation('looneyanimated3','idle', true);
        end
function onStepHit()
	if curStep == 0 then
		objectPlayAnimation('looneyanimated','idle', true);
                objectPlayAnimation('looneyanimated2','idle', true);
                objectPlayAnimation('looneyanimated3','idle', true);
end
end
end
