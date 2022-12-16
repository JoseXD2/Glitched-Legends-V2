
function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('forestanimated','idle', true);
	        objectPlayAnimation('forestanimated2','idle', true);
	        objectPlayAnimation('forestanimated3','idle', true);
        end
end

function opponentNoteHit()
       health = getProperty('health')
if dadName == 'vicky' then
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.015);
end
end
if dadName == 'bill_pibby' then
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.01);
	end
end
end