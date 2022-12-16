function onCreate()
	precacheSound('cameraFlip')
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'plauserflip' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'plauser_note');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'plauserflip' then
playSound('cameraFlip', 0.5)
		doTweenAngle('f','camHUD', 180, 0.15, 'quadInOut');
runTimer('n', 1)
end
end

function onTweenCompleted(tag)
if tag == 'f' then
		cameraShake('camGame', 0.05, 0.1)
		cameraShake('camHud', 0.05, 0.1)
end
end

function onTimerCompleted(tag)
if tag == 'n' then
		doTweenAngle('f','camHUD', 0, 0.15, 'quadInOut');
playSound('cameraFlip', 0.5)
end
end