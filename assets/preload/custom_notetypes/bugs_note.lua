function onCreate()
	--credits to: https://gamebanana.com/members/1908754 Unholywanderer04 for this
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'bugs_note' then --Check if the note on the chart is a Shootems Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'bugs_note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', -80);
			--[[  	old note splash color
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -65); 
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 35);
			]]--	uncomment to change back
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end
go = 1000
HB = 0

function onUpdate()
curentHealth = getProperty('health');
if 0 > curentHealth - (HB) then
setProperty('health', 0);
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'bugs_note' then

go = go - 20
HB = HB + 0.08
	doTweenX('dodo3', 'carrot', go, 0.2, 'linear');

	noteTweenAngle('0', 0, getRandomInt(0, 360), 0.1, 'linear');
	noteTweenAngle('1', 1, getRandomInt(0, 360), 0.2, 'linear');
	noteTweenAngle('2', 2, getRandomInt(0, 360), 0.3, 'linear');
	noteTweenAngle('3', 3, getRandomInt(0, 360), 0.4, 'linear');
	noteTweenAngle('4', 4, getRandomInt(0, 360), 0.1, 'linear');
	noteTweenAngle('5', 5, getRandomInt(0, 360), 0.2, 'linear');
	noteTweenAngle('6', 6, getRandomInt(0, 360), 0.3, 'linear');
	noteTweenAngle('7', 7, getRandomInt(0, 360), 0.4, 'linear');


end
end