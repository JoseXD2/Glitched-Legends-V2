function onCreate()
	if boyfriendName == 'timmy_pibby_turner' then
		makeAnimatedLuaSprite('animatedbficon', 'icons/timiconanimated', getProperty('iconP1.x'), getProperty('iconP1.y'))
		addAnimationByPrefix('animatedbficon', 'normal', 'tim_n',24, true)
		addAnimationByPrefix('animatedbficon', 'losing', 'tim_l', 24, true)
		addAnimationByPrefix('animatedbficon', 'winning', 'tim_w', 24, true)
		setScrollFactor('animatedicon', 0, 0)
		setObjectCamera('animatedicon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon', true)
                setObjectOrder('animatedicon', 99)
		objectPlayAnimation('animatedicon', 'normal', false)
	end
end
function onUpdate(elapsed)
	if boyfriendName == 'timmy_pibby_turner' then
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
