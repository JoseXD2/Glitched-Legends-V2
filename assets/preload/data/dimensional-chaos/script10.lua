
function onCreate()

		makeAnimatedLuaSprite('animatedicon', 'icons/vickyanimatedicon', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon', 'normal', 'vicky_n',24, true)
		addAnimationByPrefix('animatedicon', 'losing', 'vicky_l', 24, true)
		addAnimationByPrefix('animatedicon', 'winning', 'vicky_w', 24, true)
		setScrollFactor('animatedicon', 0, 0)
		setObjectCamera('animatedicon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon', true)
                setObjectOrder('animatedicon', 99)
		setProperty('animatedicon.alpha', 1)
		objectPlayAnimation('animatedicon', 'normal', false)

		makeAnimatedLuaSprite('animatedicon2', 'icons/billpibbyanimatedicon', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon2', 'normal', 'bill_pibby_n instancia ',24, true)
		addAnimationByPrefix('animatedicon2', 'losing', 'bill_pibby_l instancia ', 24, true)
		addAnimationByPrefix('animatedicon2', 'winning', 'bill_pibby_w instancia ', 24, true)
		setScrollFactor('animatedicon2', 0, 0)
		setObjectCamera('animatedicon2', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon2', false)
                setObjectOrder('animatedicon2', 99)
		setProperty('animatedicon2.alpha', 0)
		objectPlayAnimation('animatedicon2', 'normal', false)
	end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon', 'winning', false)
		else
			objectPlayAnimation('animatedicon', 'normal', false)
		end

		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon2', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon2', 'winning', false)
		else
			objectPlayAnimation('animatedicon2', 'normal', false)
		end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon.x', getProperty('iconP2.x')-35)
	setProperty('animatedicon.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon.y', getProperty('iconP2.y') - 15)
	setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y'))

	setProperty('animatedicon2.x', getProperty('iconP2.x')-10)
	setProperty('animatedicon2.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon2.y', getProperty('iconP2.y') - 28)
	setProperty('animatedicon2.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon2.scale.y', getProperty('iconP2.scale.y'))
end

function onUpdatePost()
if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singRIGHT' then

setProperty('animatedicon.alpha', 1)
setProperty('animatedicon2.alpha', 0)

end
if getProperty('gf.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then

setProperty('animatedicon.alpha', 0)
setProperty('animatedicon2.alpha', 1)
end
end