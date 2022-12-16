
function onMoveCamera(focus)
function opponentNoteHit(id, direction, noteType, isSustainNote)

	if focus == 'dad' then
		setProperty('animatedicondad.alpha', 0)
		setProperty('animatedicon.alpha', 1)
end

	if noteType == 'GF Sing' or focus == 'gf' then
		setProperty('animatedicondad.alpha', 1)
		setProperty('animatedicon.alpha', 0)
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.015);
	end
end
end
end

function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('animatedcity','idle', true);
		objectPlayAnimation('animatedcity2','idle', true);
		objectPlayAnimation('animatedcity3','idle', true);
        end

end
