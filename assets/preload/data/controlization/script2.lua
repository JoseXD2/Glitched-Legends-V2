

function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('pibby', 'idlep', true);

		objectPlayAnimation('titanraven','idle', true);

		objectPlayAnimation('titanstar','idle', true);

		objectPlayAnimation('titanbeast','idleb', true);

		objectPlayAnimation('titancyborg','idlecy', true);


		objectPlayAnimation('batman','idlebat', true);

		objectPlayAnimation('justice','idleleague', true);
	end
end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.025);
	end
end