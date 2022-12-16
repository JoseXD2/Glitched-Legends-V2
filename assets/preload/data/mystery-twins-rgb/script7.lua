
function onMoveCamera(focus)
function opponentNoteHit(id, direction, noteType, isSustainNote)
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.015);
	end
	if focus == 'dad' then
		setProperty('animatediconm.alpha', 0)
		setProperty('animatedicon.alpha', 1)
end

	if noteType == 'GF Sing' or focus == 'gf' then
		setProperty('animatediconm.alpha', 1)
		setProperty('animatedicon.alpha', 0)
end
end
end

