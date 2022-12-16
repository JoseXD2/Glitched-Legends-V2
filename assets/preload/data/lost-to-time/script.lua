function onCreate()
	precacheImage('stages/bedrock/charcbarbera');
	precacheImage('stages/bedrock/barney_idle');
	precacheImage('stages/bedrock/dino');
	precacheImage('stages/bedrock/dino_fall');

    makeAnimationList();
end

function onBeatHit()
	if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then
		objectPlayAnimation('charactersbarbera', 'dance', true);
        end
        if curBeat % 2 == 0 and curStep > 10 and curStep < 15000 then
		objectPlayAnimation('charactersbarbera2', 'dance', true);
	end
	if curBeat % 2 == 0 and curStep > 0 and curStep < 15 then
		objectPlayAnimation('dino1', 'fall', true);
	end
	if curBeat % 2 == 0 and curStep > 15 and curStep < 15000 then
		objectPlayAnimation('dino', 'idle', true);
	end
function onStepHit()
	if curStep == 0 then
		objectPlayAnimation(charcbarbera'', 'dance', true);
end
if curStep == 10 then
		setProperty('dino1.alpha', 1);
end
if curStep == 15 then
		setProperty('dino.alpha', 1);
               setProperty('dino1.alpha', 0);
		setProperty('dino.y', 90);
               objectPlayAnimation('dino1', 'fall', false);
end
end
end
