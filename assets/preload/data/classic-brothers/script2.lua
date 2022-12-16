
function onBeatHit()
        if curBeat % 2 == 0 then

                objectPlayAnimation('oldanimated2','idle', true);

end
end

function onCreatePost()
        setProperty('oldanimated.alpha', 0);
end