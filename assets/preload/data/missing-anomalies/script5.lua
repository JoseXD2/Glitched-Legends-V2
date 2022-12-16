
function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('deadanimated','idle', true);
		objectPlayAnimation('deadanimated2','idle', true);
        end
end

function opponentNoteHit()
if dadName == 'bestfriends' then
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.015);
	end
end
end