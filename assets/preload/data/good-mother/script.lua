function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.015);
	end
end

local defaultNotePos = {};
local spin = true;

function onCreatePost()
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
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + getRandomInt(0, 25) * math.cos((currentBeat + i*1.65) * math.pi))
        end
    end
end