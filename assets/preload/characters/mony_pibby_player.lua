
function onCreate()
	if boyfriendName == 'mony_pibby_player' then
		makeAnimatedLuaSprite('animatedbficon', 'icons/monyanimatedicons', getProperty('iconP1.x'), getProperty('iconP1.y'))
		addAnimationByPrefix('animatedbficon', 'normal', 'monyy_n',24, true)
		addAnimationByPrefix('animatedbficon', 'losing', 'monyy_l', 24, true)
		addAnimationByPrefix('animatedbficon', 'winning', 'monyy_w', 24, true)
		setScrollFactor('animatedbficon', 0, 0)
		setObjectCamera('animatedbficon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedbficon', true)
                setObjectOrder('animatedbficon', 99)
	setProperty('animatedbficon.flipX', true)
		objectPlayAnimation('animatedbficon', 'normal', false)
	end
end

function onUpdate(elapsed)
	if boyfriendName == 'mony_pibby_player' then
		setProperty('iconP1.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedbficon', 'winning', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedbficon', 'losing', false)
		else
			objectPlayAnimation('animatedbficon', 'normal', false)
		end
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedbficon.x', getProperty('iconP1.x')-15)
	setProperty('animatedbficon.angle', getProperty('iconP1.angle'))
	setProperty('animatedbficon.y', getProperty('iconP1.y') - 15)
	setProperty('animatedbficon.scale.x', getProperty('iconP1.scale.x'))
	setProperty('animatedbficon.scale.y', getProperty('iconP1.scale.y'))
end