
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.025);
    end
end

function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('bart', 'dance', true);
                objectPlayAnimation('peter','dance', true);
        end
end