

function onBeatHit()
if curBeat % 2 == 0 then
		objectPlayAnimation('dimmanimated','idle', true);
		objectPlayAnimation('dimmanimated2','idle', true);
                objectPlayAnimation('dimmanimated3','idle', true);
                objectPlayAnimation('dimmanimated4','idle', true);

        end
end

function onCreatePost()
        setProperty('dimmanimated2.alpha', 1);
        setProperty('dimmanimated3.alpha', 1);
        setProperty('dimmanimated4.alpha', 1);
end