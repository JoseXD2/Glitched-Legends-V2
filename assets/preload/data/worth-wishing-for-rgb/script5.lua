

function onBeatHit()
if curBeat % 2 == 0 then
		objectPlayAnimation('dimmanimated','idle', true);
		objectPlayAnimation('dimmanimated2','idle', true);
        setProperty('dimmanimated2.alpha', 1);
        end


end
function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.02);
	end
end
