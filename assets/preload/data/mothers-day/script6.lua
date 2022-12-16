
function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('voidanimated2','dance', true);
                objectPlayAnimation('voidanimated3','dance', true);

                objectPlayAnimation('voidanimated4','dance', true);

        end

end

function onCreatePost()
                setProperty('voidanimated5.alpha', 0);
        end