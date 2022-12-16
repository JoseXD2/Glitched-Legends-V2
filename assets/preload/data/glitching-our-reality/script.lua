
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.035);
    end
end


function onCreatePost()
	addVCREffect('camGame')
	addVCREffect('camHud', false)
	addVCREffect('camOther', false)
end
