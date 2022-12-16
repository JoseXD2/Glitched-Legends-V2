
function onCreate()

		makeAnimatedLuaSprite('animatediconj', 'icons/jerryanimatedicon}', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatediconj', 'normal', 'jerry_n',24, true)
		addAnimationByPrefix('animatediconj', 'losing', 'jerry_l', 24, true)
		addAnimationByPrefix('animatediconj', 'winning', 'jerry_w', 24, true)
		setScrollFactor('animatediconj', 0, 0)
		setObjectCamera('animatediconj', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatediconj', true)
                setObjectOrder('animatediconj', 99)
		setProperty('animatediconj.alpha', 0)
		objectPlayAnimation('animatediconj', 'normal', false)
	end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatediconj', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatediconj', 'winning', false)
		else
			objectPlayAnimation('animatediconj', 'normal', false)
		end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatediconj.x', getProperty('iconP2.x')-35)
	setProperty('animatediconj.angle', getProperty('iconP2.angle'))
	setProperty('animatediconj.y', getProperty('iconP2.y') + 10)
	setProperty('animatediconj.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatediconj.scale.y', getProperty('iconP2.scale.y'))
end