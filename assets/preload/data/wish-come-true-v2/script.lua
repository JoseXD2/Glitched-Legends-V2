

local defaultNotePos = {};
local spin = true;
local Y1 = 0;
local Y2 = 0;

function onSongStart()
    for i = 0,7 do

        y = getPropertyFromGroup('strumLineNotes', i, 'y')

        table.insert(defaultNotePos, {x,y})
      --  debugPrint("{" .. x .. "," .. y .. "}" .. " i:".. i)
    end
end

function onUpdate(elapsed)
    songPos = getPropertyFromClass('Conductor',  'songPosition');
    currentBeat = (songPos / 900) * (bpm / 200)
    if  spin == true then
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + getRandomInt(Y1, Y2) * math.cos((currentBeat + i*1.65) * math.pi))
        end
    end
end
function onCreatePost()
            Y1 = 0
            Y2 = 10
end

function onStepHit()
	if curStep == 160 then
            Y1 = 0
            Y2 = 40
	elseif curStep == 928 then
            Y1 = 0
            Y2 = 0
	elseif curStep == 1216 then
            Y1 = 0
            Y2 = 40
end
end

function onMoveCamera(focus)
function opponentNoteHit(id, direction, noteType, isSustainNote)

	if focus == 'dad' then
		setProperty('animatedicont.alpha', 0)
		setProperty('animatedicon.alpha', 1)
end
	if noteType == 'GF Sing' or focus == 'gf' then
		setProperty('animatedicont.alpha', 1)
		setProperty('animatedicon.alpha', 0)

end
end
end