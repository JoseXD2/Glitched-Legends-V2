function onCreate()

		makeAnimatedLuaSprite('animatedbficonp', 'icons/pibbyanimatedicon', getProperty('iconP1.x'), getProperty('iconP1.y'))
		addAnimationByPrefix('animatedbficonp', 'normal', 'pibby_n ',24, true)
		addAnimationByPrefix('animatedbficonp', 'losing', 'pibby_w ', 24, true)
                addAnimationByPrefix('animatedbficonp', 'winning', 'pibby_l ', 24, true)
		setScrollFactor('animatedbficonp', 0, 0)
		setObjectCamera('animatedbficonp', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedbficonp', false)
                setObjectOrder('animatedbficonp', 99)
		setProperty('animatedbficonp.alpha', 0)
		objectPlayAnimation('animatedbficonp', 'normal', false)
	end
function onUpdate(elapsed)

		setProperty('iconP1.alpha', 0)
		if getProperty('health') > 1.5 then
			objectPlayAnimation('animatedbficonp', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedbficonp', 'winning', false)
		else
			objectPlayAnimation('animatedbficonp', 'normal', false)
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedbficonp.x', getProperty('iconP1.x'))
	setProperty('animatedbficonp.angle', getProperty('iconP1.angle'))
	setProperty('animatedbficonp.y', getProperty('iconP1.y') - 4)
	setProperty('animatedbficonp.scale.x', getProperty('iconP1.scale.x'))
	setProperty('animatedbficonp.scale.y', getProperty('iconP1.scale.y'))
end

function goodNoteHit(id, direction, noteType, isSustainNote)
		setProperty('animatedbficon.alpha', 1)
		setProperty('animatedbficonp.alpha', 0)
	if noteType == 'pibby' then
		setProperty('animatedbficon.alpha', 0)
		setProperty('animatedbficonp.alpha', 1)

end
end