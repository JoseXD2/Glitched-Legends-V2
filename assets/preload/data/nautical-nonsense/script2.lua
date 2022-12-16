function onCreate()

		makeAnimatedLuaSprite('animatediconp', 'icons/animatedpatrickicons', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatediconp', 'normal', 'patrickk_n instancia 1',24, true)
		addAnimationByPrefix('animatediconp', 'losing', 'patickk_l instancia 1', 24, true)
		addAnimationByPrefix('animatediconp', 'winning', 'patrickk_w instancia 1', 24, true)
		setScrollFactor('animatediconp', 0, 0)
		setObjectCamera('animatediconp', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatediconp', true)
                setObjectOrder('animatediconp', 99)
		objectPlayAnimation('animatediconp', 'normal', false)
		setProperty('animatediconp.alpha', 0)
	end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatediconp', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatediconp', 'winning', false)
		else
			objectPlayAnimation('animatediconp', 'normal', false)
		end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatediconp.x', getProperty('iconP2.x')-35)
	setProperty('animatediconp.angle', getProperty('iconP2.angle'))
	setProperty('animatediconp.y', getProperty('iconP2.y') - 0)
	setProperty('animatediconp.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatediconp.scale.y', getProperty('iconP2.scale.y'))
end