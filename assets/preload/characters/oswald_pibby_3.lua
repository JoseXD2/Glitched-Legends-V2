
function onCreate()

		makeAnimatedLuaSprite('animatedicono', 'icons/animatedoswaldicon', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicono', 'normal', 'oswald_n',24, true)
		addAnimationByPrefix('animatedicono', 'losing', 'oswald_l', 24, true)
		addAnimationByPrefix('animatedicono', 'winning', 'oswald_w', 24, true)
		setScrollFactor('animatedicono', 0, 0)
		setObjectCamera('animatedicono', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicono', true)
                setObjectOrder('animatedicono', 99)
		objectPlayAnimation('animatedicono', 'normal', false)
		setProperty('animatedicono.alpha', 0)
	end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicono', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicono', 'winning', false)
		else
			objectPlayAnimation('animatedicono', 'normal', false)
		end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicono.x', getProperty('iconP2.x')-35)
	setProperty('animatedicono.angle', getProperty('iconP2.angle'))
	setProperty('animatedicono.y', getProperty('iconP2.y') - 15)
	setProperty('animatedicono.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicono.scale.y', getProperty('iconP2.scale.y'))
end