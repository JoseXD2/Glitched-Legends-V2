
function onCreate()
	if dadName == 'm_d_pibby' then
		makeAnimatedLuaSprite('animatediconm', 'icons/icontwinsanimated', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatediconm', 'normal', 'dipma_n',24, true)
		addAnimationByPrefix('animatediconm', 'losing', 'dipma_l', 24, true)
		addAnimationByPrefix('animatediconm', 'winning', 'dipma_w', 24, true)
		setScrollFactor('animatediconm', 0, 0)
		setObjectCamera('animatediconm', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatediconm', false)
                setObjectOrder('animatediconm', 99)
		objectPlayAnimation('animatediconm', 'normal', false)
	end
end

function onUpdate(elapsed)
	if dadName == 'm_d_pibby' then
		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatediconm', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatediconm', 'winning', false)
		else
			objectPlayAnimation('animatediconm', 'normal', false)
		end
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatediconm.x', getProperty('iconP2.x')-75)
	setProperty('animatediconm.angle', getProperty('iconP2.angle'))
	setProperty('animatediconm.y', getProperty('iconP2.y') - 45)
	setProperty('animatediconm.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatediconm.scale.y', getProperty('iconP2.scale.y'))
end