function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'gumball note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'special_note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

scroll = 3.5
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'gumball note' then
		cameraFlash('game', '0x000000', 0.1, true)
scroll = scroll + 0.15


	end
end

function onUpdate()
setProperty('songSpeed', scroll)
end