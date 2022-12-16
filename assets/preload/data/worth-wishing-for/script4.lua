

function onBeatHit()
if curBeat % 2 == 0 then
		objectPlayAnimation('dimmanimated','idle', true);
		objectPlayAnimation('dimmanimated2','idle', true);

        end
end


function onCreatePost()
        setProperty('dimmanimated2.alpha', 1);
end