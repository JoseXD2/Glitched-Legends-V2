
function onBeatHit()
        if curBeat % 1 == 0 then
		objectPlayAnimation('hillsanimated','idle', true);
		objectPlayAnimation('hillsanimated2','idle', true);
        end
  if curBeat % 4 == 0 then
		objectPlayAnimation('hillsanimated3','idle', true);
                objectPlayAnimation('hillsanimated4','idle', true);

        end

end
