function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'glitched_note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'glitched_note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-500'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '500'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'glitched_note' then
		-- put something here if you want
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'glitched_note' then
		-- put something here if you want
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'glitched_note' and difficulty == 2 then
		setProperty('health', getProperty('health')-3);
		playSound('sound_dead', 3);
		characterPlayAnim('dad', 'hey', true);
		characterPlayAnim('boyfriend', 'hurt', true);
	elseif noteType == 'glitched_note' and difficulty == 1 then
		setProperty('glitched_note', getProperty('health')-3);
		playSound('sound_dead', 3);
		characterPlayAnim('dad', 'hey', true);
		characterPlayAnim('boyfriend', 'hurt', true);
	end
end