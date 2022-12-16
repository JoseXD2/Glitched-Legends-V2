local alone = false
function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('snowanimated','idle', true);

        end
end

function opponentNoteHit()
triggerEvent('Add Camera Zoom', '0.03', '0.01')
if dadName == 'bestfriends' then
triggerEvent('Add Camera Zoom', '0.05', '0.01')
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.015);
	end
end
end
function goodNoteHit(id, direction, noteType, isSustainNote)
triggerEvent('Add Camera Zoom', '0.01', '0.01')
if alone == true then
triggerEvent('Add Camera Zoom', '0.03', '0.01')
end
end

function onStepHit()
if curStep == 3664 then
alone = true
    noteTweenX('Middleshit0', 0, -5000, 0.1, 'quartInOut')
    noteTweenX('Middleshit1', 1, -5000, 0.1, 'quartInOut')
    noteTweenX('Middleshit2', 2, -5000, 0.1, 'quartInOut')
    noteTweenX('Middleshit3', 3, -5000, 0.1, 'quartInOut')
    noteTweenX('Middleshit4', 4, 415, 0.1, 'quartInOut')
    noteTweenX('Middleshit5', 5, 525, 0.1, 'quartInOut')
    noteTweenX('Middleshit6', 6, 635, 0.1, 'quartInOut')
    noteTweenX('Middleshit7', 7, 745, 0.1, 'quartInOut')
end
end