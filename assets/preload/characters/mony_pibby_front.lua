local originy = 0
function onCreate()

	originy = getProperty('dad.y')

end
function onCreate()
	if dadName == 'mony_pibby_front' then
		makeAnimatedLuaSprite('animatedicon', 'icons/monyanimatedicons', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon', 'normal', 'monyy_n',24, true)
		addAnimationByPrefix('animatedicon', 'losing', 'monyy_l', 24, true)
		addAnimationByPrefix('animatedicon', 'winning', 'monyy_w', 24, true)
		setScrollFactor('animatedicon', 0, 0)
		setObjectCamera('animatedicon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon', true)
                setObjectOrder('animatedicon', 99)
		objectPlayAnimation('animatedicon', 'normal', false)
	end
end

function onUpdate(elapsed)
	if dadName == 'mony_pibby_front' then
		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon', 'winning', false)
		else
			objectPlayAnimation('animatedicon', 'normal', false)
		end
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon.x', getProperty('iconP2.x')-35)
	setProperty('animatedicon.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon.y', getProperty('iconP2.y') - 15)
	setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y'))
end