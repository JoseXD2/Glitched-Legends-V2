
function onCreate()

		makeAnimatedLuaSprite('animatedicondad', 'icons/dadanimatedicons', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicondad', 'normal', 'dad_n instancia 1',24, true)
		addAnimationByPrefix('animatedicondad', 'losing', 'dad_l instancia 1', 24, true)
		addAnimationByPrefix('animatedicondad', 'winning', 'dad_w instancia 1', 24, true)
		setScrollFactor('animatedicondad', 0, 0)
                scaleObject('animatedicondad', 1.5, 1.5);
		setObjectCamera('animatedicondad', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicondad', true)
                setObjectOrder('animatedicondad', 99)
		setProperty('animatedicondad.alpha', 0)
		objectPlayAnimation('animatedicondad', 'normal', false)
	end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicondad', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicondad', 'winning', false)
		else
			objectPlayAnimation('animatedicondad', 'normal', false)
		end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicondad.x', getProperty('iconP2.x')-75)
	setProperty('animatedicondad.angle', getProperty('iconP2.angle'))
	setProperty('animatedicondad.y', getProperty('iconP2.y') - 55)
	setProperty('animatedicondad.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicondad.scale.y', getProperty('iconP2.scale.y'))
end