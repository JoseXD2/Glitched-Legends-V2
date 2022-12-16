

function onBeatHit()
        if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then
		objectPlayAnimation('voidanimated2','dance', true);
                objectPlayAnimation('voidanimated3','dance', true);
                objectPlayAnimation('voidanimated5','dance', true);
                objectPlayAnimation('voidanimated4','dance', true);
        end
function onStepHit()
	if curStep == 0 then
		objectPlayAnimation('voidanimated2','dance', true);
                objectPlayAnimation('voidanimated3','dance', true);
                objectPlayAnimation('voidanimated5','dance', true);
                objectPlayAnimation('voidanimated4','dance', true);
end
end
end
