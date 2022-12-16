local MaxM = 0
local Max = 0

function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'dexx' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'dustpapyrus'); --Change texture
end
end
MaxM = 10
Max = 0

makeLuaText('Misses', 'Death Misses: 10',2250,-490)

getProperty('scoreTxt.x');

setTextSize('Misses', 23);

setTextBorder('Misses', 2, '000000');

addLuaText('Misses');

	if downscroll then
	makeLuaText('Misses', 'Death Misses: 10', 0, 540, 700)
getProperty('scoreTxt.y');
setTextSize('Misses', 23);

setTextBorder('Misses', 2, '000000');

addLuaText('Misses');

end
end
function noteMiss(id, direction, noteType, isSustainNote)
MaxM = MaxM - 1
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'dexx' then

MaxM = MaxM + 1
	end
end

function onUpdate(elapsed)

if MaxM == Max then
setProperty('health', 0)
end


if MaxM < 6 then
	local lol = math.random(2,3)
	if (lol >= 2) then
setTextBorder('Misses', 2, '000000');
	end
	if (lol >= 3) then
setTextBorder('Misses', 2, 'FF002D');
	end

end
end
function onUpdatePost(elasped)

setTextString('Misses', 'Death Misses:'..MaxM);
end
