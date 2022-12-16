
function onCreate()

		makeAnimatedLuaSprite('animatediconbi', 'icons/billpibbyanimatedicon', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatediconbi', 'normal', 'bill_pibby_n instancia ',24, true)
		addAnimationByPrefix('animatediconbi', 'losing', 'bill_pibby_l instancia ', 24, true)
		addAnimationByPrefix('animatediconbi', 'winning', 'bill_pibby_w instancia ', 24, true)
		setScrollFactor('animatediconbi', 0, 0)
		setObjectCamera('animatediconbi', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatediconbi', false)
                setObjectOrder('animatediconbi', 99)
		objectPlayAnimation('animatediconbi', 'normal', false)
		setProperty('animatediconbi.alpha', 0)
	end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatediconbi', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatediconbi', 'winning', false)
		else
			objectPlayAnimation('animatediconbi', 'normal', false)
		end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatediconbi.x', getProperty('iconP2.x')-10)
	setProperty('animatediconbi.angle', getProperty('iconP2.angle'))
	setProperty('animatediconbi.y', getProperty('iconP2.y') - 28)
	setProperty('animatediconbi.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatediconbi.scale.y', getProperty('iconP2.scale.y'))
end