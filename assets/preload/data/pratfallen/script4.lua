
function onBeatHit()
        if curBeat % 1 == 0 then
		objectPlayAnimation('tomsanimated3','idle', true);
        end
if curBeat % 2 == 0 then
		objectPlayAnimation('tomsanimated','idle', true);
		objectPlayAnimation('tomsanimated2','idle', true);
        end


end
