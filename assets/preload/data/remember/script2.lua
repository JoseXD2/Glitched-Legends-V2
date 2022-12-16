
function onBeatHit()
	if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then

		objectPlayAnimation('chairsfront','dance', true);
        end
function onStepHit()
	if curStep == 0 then
		objectPlayAnimation('chairsfront','dance', true);
end
end
end
