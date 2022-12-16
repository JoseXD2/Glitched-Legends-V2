function onCreate()
	if boyfriendName == 'bf_look_up' then
		makeAnimatedLuaSprite('animatedbficon', 'icons/bficonanimated', getProperty('iconP1.x'), getProperty('iconP1.y'))
		addAnimationByPrefix('animatedbficon', 'normal', 'bfp_n',24, true)
		addAnimationByPrefix('animatedbficon', 'losing', 'bfp_l', 24, true)
                addAnimationByPrefix('animatedbficon', 'winning', 'bffp_ww', 24, true)
		setScrollFactor('animatedbficon', 0, 0)
		setObjectCamera('animatedbficon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedbficon', false)
                setObjectOrder('animatedbficon', 99)
		objectPlayAnimation('animatedbficon', 'normal', false)
	end
end
function onUpdate(elapsed)
	if boyfriendName == 'bf_look_up' then
		setProperty('iconP1.alpha', 0)
		if getProperty('health') > 1.5 then
			objectPlayAnimation('animatedbficon', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedbficon', 'winning', false)
		else
			objectPlayAnimation('animatedbficon', 'normal', false)
		end
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedbficon.x', getProperty('iconP1.x'))
	setProperty('animatedbficon.angle', getProperty('iconP1.angle'))
	setProperty('animatedbficon.y', getProperty('iconP1.y') - 10)
	setProperty('animatedbficon.scale.x', getProperty('iconP1.scale.x'))
	setProperty('animatedbficon.scale.y', getProperty('iconP1.scale.y'))
end