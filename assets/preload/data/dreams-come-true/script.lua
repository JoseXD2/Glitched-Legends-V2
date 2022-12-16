function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.01);
	end
end

function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('villageanimated','idle', true);
                objectPlayAnimation('villageanimated2','idle', true);
                objectPlayAnimation('villageanimated3','idle', true);
        end
end

function onUpdate(elapsed)
	local songPos = getSongPosition()
	local currentBeat = (songPos / 1000) * (bpm / 200)

	for i = 0, 7 do
		noteTweenY("Wave" .. i, i, defaultPlayerStrumY0 + 20 * math.cos((currentBeat + i * 8.25) * math.pi), 0.001)
	end
end
