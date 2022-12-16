function onUpdate()
if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singRIGHT' then

		setProperty('animatedicon.alpha', 1)
		setProperty('animatediconm.alpha', 0)


end
if getProperty('gf.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
		setProperty('animatedicon.alpha', 0)
		setProperty('animatediconm.alpha', 1)


end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)

       health = getProperty('health')

    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.015);
	end
end

function onCreatePost()
  doTweenX('fuck off', 'gf', -2000, 0.00001, 'linear');
end

function onStepHit()
	if curStep == 764 then
  doTweenX('fuck off2', 'gf', 700, 1, 'linear');
end
end