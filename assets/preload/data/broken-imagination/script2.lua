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

		makeAnimatedLuaSprite('animatedicons', 'icons/squidwardanimatedicons', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicons', 'normal', 'squid_n',24, true)
		addAnimationByPrefix('animatedicons', 'losing', 'squid_l', 24, true)
		addAnimationByPrefix('animatedicons', 'winning', 'squid_w', 24, true)
		setScrollFactor('animatedicons', 0, 0)
		setObjectCamera('animatedicons', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicons', true)
                setObjectOrder('animatedicons', 99)
		objectPlayAnimation('animatedicons', 'normal', false)
		setProperty('animatedicons.alpha', 0)
	end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatediconp', 'losing', false)
			objectPlayAnimation('animatedicons', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatediconp', 'winning', false)
			objectPlayAnimation('animatedicons', 'winning', false)
		else
			objectPlayAnimation('animatediconp', 'normal', false)
			objectPlayAnimation('animatedicons', 'normal', false)
		end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatediconp.x', getProperty('iconP2.x')-35)
	setProperty('animatediconp.angle', getProperty('iconP2.angle'))
	setProperty('animatediconp.y', getProperty('iconP2.y') - 0)
	setProperty('animatediconp.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatediconp.scale.y', getProperty('iconP2.scale.y'))

	setProperty('animatedicons.x', getProperty('iconP2.x')-35)
	setProperty('animatedicons.angle', getProperty('iconP2.angle'))
	setProperty('animatedicons.y', getProperty('iconP2.y') - 0)
	setProperty('animatedicons.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicons.scale.y', getProperty('iconP2.scale.y'))
end