
function onCreate()

		makeAnimatedLuaSprite('animatedicont', 'icons/timiconanimated', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicont', 'normal', 'tim_n instancia 1',24, true)
		addAnimationByPrefix('animatedicont', 'losing', 'tim_l instancia 1', 24, true)
		addAnimationByPrefix('animatedicont', 'winning', 'tim_w instancia 1', 24, true)
		setScrollFactor('animatedicont', 0, 0)
		setObjectCamera('animatedicont', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicont', true)
                setObjectOrder('animatedicont', 99)
		setProperty('animatedicont.alpha', 0)
		objectPlayAnimation('animatedicont', 'normal', false)
	end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicont', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicont', 'winning', false)
		else
			objectPlayAnimation('animatedicont', 'normal', false)
		end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicont.x', getProperty('iconP2.x')-35)
	setProperty('animatedicont.angle', getProperty('iconP2.angle'))
	setProperty('animatedicont.y', getProperty('iconP2.y') - 35)
	setProperty('animatedicont.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicont.scale.y', getProperty('iconP2.scale.y'))
end