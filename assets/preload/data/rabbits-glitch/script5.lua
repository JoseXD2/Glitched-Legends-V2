
function onCreate()

		makeAnimatedLuaSprite('oanimatedicon', 'icons/oldaniamtedicon', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('oanimatedicon', 'normal', 'oswald_n',24, true)
		addAnimationByPrefix('oanimatedicon', 'losing', 'oswald_l', 24, true)
		addAnimationByPrefix('oanimatedicon', 'winning', 'oswald_w', 24, true)
		setScrollFactor('oanimatedicon', 0, 0)
		setObjectCamera('oanimatedicon', 'hud') -- either is under the health bar or nothing
		addLuaSprite('oanimatedicon', false)

		objectPlayAnimation('oanimatedicon', 'normal', false)
	end


function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('oanimatedicon', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('oanimatedicon', 'winning', false)
		else
			objectPlayAnimation('oanimatedicon', 'normal', false)
		end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('oanimatedicon.x', getProperty('iconP2.x')-35)
	setProperty('oanimatedicon.angle', getProperty('iconP2.angle'))
	setProperty('oanimatedicon.y', getProperty('iconP2.y') - 15)
	setProperty('oanimatedicon.scale.x', getProperty('iconP2.scale.x'))
	setProperty('oanimatedicon.scale.y', getProperty('iconP2.scale.y'))
end