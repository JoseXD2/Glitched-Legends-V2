
function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('tomsanimated3','idle', true);
		objectPlayAnimation('tomsanimated','idle', true);

		objectPlayAnimation('tomsanimated2','idle', true);
end
        end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.01);
	end
end
