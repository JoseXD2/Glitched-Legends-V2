function onCreate()
		makeAnimatedLuaSprite('animatedicon', 'icons/animatediconsfornicole', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon', 'normal', 'nicole_n',24, true)

		addAnimationByPrefix('animatedicon', 'losing', 'nicole_l', 24, true)
		addAnimationByPrefix('animatedicon', 'winning', 'nicole_w', 24, true)
		setScrollFactor('animatedicon', 0, 0)
		setObjectCamera('animatedicon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon', true)
                setObjectOrder('animatedicon', 99)
	setProperty('animatedicon.alpha',0)
		objectPlayAnimation('animatedicon', 'normal', false)
end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.02);
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

    if curStep == 64 then
	setProperty('animatedicon.alpha',1)
            Y1 = 0
            Y2 = 25
end
end