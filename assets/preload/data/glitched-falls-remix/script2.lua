
function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('forestanimated','idle', true);
	        objectPlayAnimation('forestanimated2','idle', true);
	        objectPlayAnimation('forestanimated3','idle', true);
        end
end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.002);
	end
end