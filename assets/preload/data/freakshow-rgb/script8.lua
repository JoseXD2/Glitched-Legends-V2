

function onUpdate()
if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singRIGHT' then

		setProperty('animatedicon.alpha', 0)
		setProperty('animatediconm.alpha', 1)


end
if getProperty('gf.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
		setProperty('animatedicon.alpha', 1)
		setProperty('animatediconm.alpha', 0)


end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.01);
	end
end

function onBeatHit()

        if curBeat % 2 == 0 then
		objectPlayAnimation('forestanimated','idle', true);
	        objectPlayAnimation('forestanimated2','idle', true);
                objectPlayAnimation('forestanimated3','idle', true);
                objectPlayAnimation('forestanimated4','idle', true);
                objectPlayAnimation('forestanimated6','idle', true);
        end
end

function onCreatePost()
       setProperty('forestanimatedalt.alpha', 0);
end