function onUpdate(elapsed)
	local songPos = getSongPosition()
	local currentBeat = (songPos / 1000) * (bpm / 200)

	for i = 0, 7 do
		noteTweenY("Wave" .. i, i, defaultPlayerStrumY0 + 20 * math.cos((currentBeat + i * 8.25) * math.pi), 0.001)
	end
end
