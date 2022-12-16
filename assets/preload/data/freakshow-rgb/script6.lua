
function onCreate()

		makeAnimatedLuaSprite('animatediconm', 'icons/mabelaniamtedicon', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatediconm', 'normal', 'mabel_n instancia 1',24, true)
		addAnimationByPrefix('animatediconm', 'losing', 'mabel_l instancia 1', 24, true)
		addAnimationByPrefix('animatediconm', 'winning', 'mabel_w instancia 1', 24, true)
		setScrollFactor('animatediconm', 0, 0)
		setObjectCamera('animatediconm', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatediconm', false)
                setObjectOrder('animatediconm', 99)
		setProperty('animatediconm.alpha', 1)
		objectPlayAnimation('animatediconm', 'normal', false)
	end


function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatediconm', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatediconm', 'winning', false)
		else
			objectPlayAnimation('animatediconm', 'normal', false)
		end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatediconm.x', getProperty('iconP2.x')-35)
	setProperty('animatediconm.angle', getProperty('iconP2.angle'))
	setProperty('animatediconm.y', getProperty('iconP2.y') - 25)
	setProperty('animatediconm.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatediconm.scale.y', getProperty('iconP2.scale.y'))
end