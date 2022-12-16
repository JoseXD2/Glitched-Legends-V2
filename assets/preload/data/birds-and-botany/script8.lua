
function onCreate()
		makeAnimatedLuaSprite('animatedicon', 'icons/animatedredicon', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon', 'normal', 'red_n instancia 1',24, true)
		addAnimationByPrefix('animatedicon', 'losing', 'red_l instancia 1', 24, true)
		addAnimationByPrefix('animatedicon', 'winning', 'red_w instancia 1', 24, true)
		setScrollFactor('animatedicon', 0, 0)
		setObjectCamera('animatedicon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon', false)
                setObjectOrder('animatedicon', 99)
		setProperty('animatedicon.alpha', 0)
		objectPlayAnimation('animatedicon', 'normal', false)


		makeAnimatedLuaSprite('animatediconp', 'icons/animatediconpea', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatediconp', 'normalp', 'pea_n instancia 1',24, true)
		addAnimationByPrefix('animatediconp', 'losingp', 'pea_l instancia 1', 24, true)
		addAnimationByPrefix('animatediconp', 'winningp', 'pea_w instancia 1', 24, true)
		setScrollFactor('animatediconp', 0, 0)
		setObjectCamera('animatediconp', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatediconp', false)
                setObjectOrder('animatediconp', 99)
		setProperty('animatediconp.alpha', 0)
		objectPlayAnimation('animatediconp', 'normalp', false)
	end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon', 'losing', false)
			objectPlayAnimation('animatediconp', 'losingp', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon', 'winning', false)
			objectPlayAnimation('animatediconp', 'winningp', false)
		else
			objectPlayAnimation('animatedicon', 'normal', false)
			objectPlayAnimation('animatediconp', 'normalp', false)
		end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon.x', getProperty('iconP2.x')-50)
	setProperty('animatedicon.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon.y', getProperty('iconP2.y') - 10)
	setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y'))


	setProperty('animatediconp.x', getProperty('iconP2.x')-50)
	setProperty('animatediconp.angle', getProperty('iconP2.angle'))
	setProperty('animatediconp.y', getProperty('iconP2.y') - 10)
	setProperty('animatediconp.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatediconp.scale.y', getProperty('iconP2.scale.y'))
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
function onMoveCamera(focus)
	if focus == 'dad' then
		setProperty('animatediconp.alpha', 0)
		setProperty('animatedicon.alpha', 1)
end

	if noteType == 'GF Sing' or focus == 'gf' then
		setProperty('animatediconp.alpha', 1)
		setProperty('animatedicon.alpha', 0)
end
end
end