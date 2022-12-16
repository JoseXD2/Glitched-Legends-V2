
function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('villageanimated','idle', true);
                objectPlayAnimation('villageanimated2','idle', true);
                objectPlayAnimation('villageanimated3','idle', true);
        end
end