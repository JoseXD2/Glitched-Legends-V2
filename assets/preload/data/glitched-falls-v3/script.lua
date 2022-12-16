
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'billalt' then

		setProperty('animatedicon.alpha', 0)
		setProperty('animatediconm.alpha', 0)
		setProperty('animatediconbi.alpha', 1)

end
end

function onUpdate()
if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singRIGHT' then

		setProperty('animatedicon.alpha', 1)
		setProperty('animatediconm.alpha', 0)
		setProperty('animatediconbi.alpha', 0)

end
if getProperty('gf.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
		setProperty('animatedicon.alpha', 0)
		setProperty('animatediconm.alpha', 1)
		setProperty('animatediconbi.alpha', 0)

end
end

