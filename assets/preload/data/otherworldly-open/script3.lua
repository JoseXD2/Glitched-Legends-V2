
function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('forestanimatedalt','idle', true);
	        objectPlayAnimation('forestanimated2','idle', true);
        end
end
function onCreatePost()
                setProperty('forestanimatedalt.alpha', 1);


end