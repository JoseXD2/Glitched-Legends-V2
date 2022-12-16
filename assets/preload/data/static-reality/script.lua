

function opponentNoteHit()
health = getProperty('health')
       setProperty('health', health +0.02);
end

function goodNoteHit()
health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.05);
	end
end
