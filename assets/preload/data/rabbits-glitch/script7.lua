function onCreate()

	precacheImage('OLDNOTE_assets')
	precacheImage('NOTE_assets')

end
local value1 = 'OLDNOTE_assets'

function onUpdate(elapsed)

			for i = 0, getProperty('opponentStrums.length')-1 do
				setPropertyFromGroup('opponentStrums', i, 'texture', value1);
			end
			for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
				setPropertyFromGroup('unspawnNotes', i, 'texture', value1);
				end
			end
			for i = 0, getProperty('playerStrums.length')-1 do
			setPropertyFromGroup('playerStrums', i, 'texture', value1);
			end
			for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', value1);
				end
			end
end

function onStepHit()
if curStep == 500 then

value1 = 'NOTE_assets'

end
end