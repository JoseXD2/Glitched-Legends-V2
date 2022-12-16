

function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('krustyanimated','idle', true);
                objectPlayAnimation('sponghouseaniamted3','idle', true);
                objectPlayAnimation('sponghouseaniamted8','idle', true);
        end

	end

function onCreatePost()
setProperty('krustyanimated2.alpha', 0);
end


function goodNoteHit(id, direction, noteType, isSustainNote)
		setProperty('animatedbficon.alpha', 1)
		setProperty('animatedbficonp.alpha', 0)
	if noteType == 'pibby' then
		setProperty('animatedbficon.alpha', 0)
		setProperty('animatedbficonp.alpha', 1)

end
end


function onUpdate()
if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singRIGHT' then

setProperty('animatedicon.alpha', 1)
setProperty('animatediconp.alpha', 0)
end
if getProperty('gf.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
setProperty('animatedicon.alpha', 0)
setProperty('animatediconp.alpha', 1)
end
end