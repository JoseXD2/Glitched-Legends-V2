
function onCreate()

		makeAnimatedLuaSprite('animatedicon', 'icons/animatedicondipper', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon', 'normal', 'dipper_n',24, true)
		addAnimationByPrefix('animatedicon', 'losing', 'dipper_l', 24, true)
		addAnimationByPrefix('animatedicon', 'winning', 'dipper_w', 24, true)
		setScrollFactor('animatedicon', 0, 0)
                scaleObject('animatedicon', 1.5, 1.5);
		setObjectCamera('animatedicon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon', true)
                setObjectOrder('animatedicon', 99)
		objectPlayAnimation('animatedicon', 'normal', false)
		setProperty('animatedicon.alpha', 0)
	end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon', 'winning', false)
		else
			objectPlayAnimation('animatedicon', 'normal', false)
		end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon.x', getProperty('iconP2.x')-95)
	setProperty('animatedicon.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon.y', getProperty('iconP2.y') - 55)
	setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y'))
end