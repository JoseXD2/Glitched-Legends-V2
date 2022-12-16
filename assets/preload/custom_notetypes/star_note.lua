function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'star_note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'starnotes'); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored

				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end


local re = true
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'star_note' then

if middlescroll then
    noteTweenX('fuckyou1', 4, 745, 0.1, 'quartInOut')
    noteTweenX('fuckyou2', 5, 635, 0.1, 'quartInOut')
    noteTweenX('fuckyou3', 6, 525, 0.1, 'quartInOut')
    noteTweenX('fuckyou4', 7, 415, 0.1, 'quartInOut')
	  runTimer('reversecard', 0.1, 10)
	  runTimer('reversecard5', 5)
end
if not middlescroll then
    noteTweenX('fuckyou12', 4, 1069, 0.1, 'quartInOut')
    noteTweenX('fuckyou22', 5, 957, 0.1, 'quartInOut')
    noteTweenX('fuckyou32', 6, 845, 0.1, 'quartInOut')
    noteTweenX('fuckyou42', 7, 733, 0.1, 'quartInOut')
	  runTimer('reversecard2', 0.1, 10)
	  runTimer('reversecard5', 5)
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
  if tag == 'reversecard' and re == false then
if middlescroll then
    noteTweenX('Noyou1', 4, 415, 0.1, 'quartInOut')
    noteTweenX('Noyou2', 5, 525, 0.1, 'quartInOut')
    noteTweenX('Noyou3', 6, 635, 0.1, 'quartInOut')
    noteTweenX('Noyou4', 7, 745, 0.1, 'quartInOut')
re = true
end

  elseif tag == 'reversecard' and re == true then
if middlescroll then
    noteTweenX('fuckyou1', 4, 745, 0.1, 'quartInOut')
    noteTweenX('fuckyou2', 5, 635, 0.1, 'quartInOut')
    noteTweenX('fuckyou3', 6, 525, 0.1, 'quartInOut')
    noteTweenX('fuckyou4', 7, 415, 0.1, 'quartInOut')
re = false
end
  elseif tag == 'reversecard2' and re == false then
if not middlescroll then
    noteTweenX('fuckyou12', 4, 733, 0.1, 'quartInOut')
    noteTweenX('fuckyou22', 5, 845, 0.1, 'quartInOut')
    noteTweenX('fuckyou32', 6, 957, 0.1, 'quartInOut')
    noteTweenX('fuckyou42', 7, 1069, 0.1, 'quartInOut')
re = true
end
  elseif tag == 'reversecard2' and re == true then
if not middlescroll then
    noteTweenX('fuckyou22', 5, 957, 0.1, 'quartInOut')
    noteTweenX('fuckyou32', 6, 845, 0.1, 'quartInOut')
    noteTweenX('fuckyou42', 7, 733, 0.1, 'quartInOut')
re = false
  elseif tag == 'reversecard5' then
    noteTweenX('Noyou1', 4, 415, 0.1, 'quartInOut')
    noteTweenX('Noyou2', 5, 525, 0.1, 'quartInOut')
    noteTweenX('Noyou3', 6, 635, 0.1, 'quartInOut')
    noteTweenX('Noyou4', 7, 745, 0.1, 'quartInOut')

end
end
end
