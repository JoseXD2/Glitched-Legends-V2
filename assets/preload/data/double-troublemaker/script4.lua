
function onBeatHit()
	if curBeat % 2 == 0 then

		objectPlayAnimation('bkanimated','dance', true);
		objectPlayAnimation('bkanimated2','dance', true);
		objectPlayAnimation('bkanimated3','dance', true);
                objectPlayAnimation('sponghouseaniamted3','idle', true);
                objectPlayAnimation('pibby','idlep', true);
                objectPlayAnimation('sponghouseaniamted8','idle', true);
        end
        end



function onStepHit()
if curStep == 1096 then
		objectPlayAnimation('bubbles','dance', true);
                setProperty('bubbles.alpha', 0);

end
if curStep == 1102 then
                setProperty('bubbles.alpha', 0);
                objectPlayAnimation('bubbles','dance', false);

end
if curStep == 1188 then
                setProperty('bubbles.alpha', 0);

		objectPlayAnimation('bubbles','dance', true);
                objectPlayAnimation('bubbles','dance', false);

end
if curStep == 1194 then
                setProperty('bubbles.alpha', 0);
                objectPlayAnimation('bubbles','dance', false);

end
if curStep == 1285 then
                setProperty('bubbles.alpha', 0);

		objectPlayAnimation('bubbles','dance', true);

end
if curStep == 1291 then
                setProperty('bubbles.alpha', 0);
                objectPlayAnimation('bubbles','dance', false);

end
end
