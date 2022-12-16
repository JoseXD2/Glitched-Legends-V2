function onCreate()

		makeAnimatedLuaSprite('animatedbficono', 'icons/oldbfaniamtedicons', getProperty('iconP1.x'), getProperty('iconP1.y'))
		addAnimationByPrefix('animatedbficono', 'normal', 'bfp_n',24, true)
		addAnimationByPrefix('animatedbficono', 'losing', 'bfp_l', 24, true)
                addAnimationByPrefix('animatedbficono', 'winning', 'bffp_ww', 24, true)
		setScrollFactor('animatedbficono', 0, 0)
		setObjectCamera('animatedbficono', 'hud') -- either is under the health bar or nothing
		addLuaSprite('animatedbficono', false)
		setProperty('animatedbficono.alpha', 1)
		objectPlayAnimation('animatedbficono', 'normal', false)
	end
function onUpdate(elapsed)

		setProperty('iconP1.alpha', 0)
		if getProperty('health') > 1.5 then
			objectPlayAnimation('animatedbficono', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedbficono', 'winning', false)
		else
			objectPlayAnimation('animatedbficono', 'normal', false)
		end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedbficono.x', getProperty('iconP1.x'))
	setProperty('animatedbficono.angle', getProperty('iconP1.angle'))
	setProperty('animatedbficono.y', getProperty('iconP1.y') - 10)
	setProperty('animatedbficono.scale.x', getProperty('iconP1.scale.x') - 0.2)
	setProperty('animatedbficono.scale.y', getProperty('iconP1.scale.y') - 0.2)
end
