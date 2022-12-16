function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.01);
	end
end

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

function onStepHit()
	if curStep == 128 then
            Y1 = 0
            Y2 = 45
	elseif curStep == 513 then
            Y1 = 0
            Y2 = 0
	elseif curStep == 896 then
            Y1 = 0
            Y2 = 45
	elseif curStep == 1008 then
            Y1 = 0
            Y2 = 0
	elseif curStep == 1024 then
            Y1 = 0
            Y2 = 65
	elseif curStep == 1152 then
            Y1 = 0
            Y2 = 45
	elseif curStep == 1216 then
            Y1 = 0
            Y2 = 65
	elseif curStep == 1312 then
            Y1 = 0
            Y2 = 0
end
end