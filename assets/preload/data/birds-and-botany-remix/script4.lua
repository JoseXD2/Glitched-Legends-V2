

function onCreate()

		makeAnimatedLuaSprite('red', 'icons/animatedredicon', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('red', 'redN', 'red_n instancia 1',24, true)
		addAnimationByPrefix('red', 'redL', 'red_l instancia 1', 24, true)
		addAnimationByPrefix('red', 'redW', 'red_w instancia 1', 24, true)

		setObjectCamera('red', 'other') -- either is under the health bar or nothing
		addLuaSprite('red', false)
                setObjectOrder('red', 99)
		objectPlayAnimation('red', 'redN', false)
		setProperty('red.alpha', 1)

		makeAnimatedLuaSprite('pea', 'icons/animatediconpea', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('pea', 'peaN', 'pea_n instancia 1',24, true)
		addAnimationByPrefix('pea', 'peaL', 'pea_l instancia 1', 24, true)
		addAnimationByPrefix('pea', 'peaW', 'pea_w instancia 1', 24, true)

		setObjectCamera('pea', 'other') -- either is under the health bar or nothing
		addLuaSprite('pea', false)
                setObjectOrder('pea', 99)
		objectPlayAnimation('pea', 'peaN', false)
		setProperty('pea.alpha', 0)

end

function onUpdate(elapsed)
setProperty('animatedicon.alpha', 0)
		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('red', 'redL', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('red', 'redW', false)
		else
			objectPlayAnimation('red', 'redN', false)
	end

		if getProperty('health') > 1.6 then
			objectPlayAnimation('pea', 'peaL', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('pea', 'peaW', false)
		else
			objectPlayAnimation('pea', 'peaN', false)
	end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('red.x', getProperty('iconP2.x')-50)
	setProperty('red.angle', getProperty('iconP2.angle'))
	setProperty('red.y', getProperty('iconP2.y') - 10)
	setProperty('red.scale.x', getProperty('iconP2.scale.x'))
	setProperty('red.scale.y', getProperty('iconP2.scale.y'))

	setProperty('pea.x', getProperty('iconP2.x')-50)
	setProperty('pea.angle', getProperty('iconP2.angle'))
	setProperty('pea.y', getProperty('iconP2.y') - 10)
	setProperty('pea.scale.x', getProperty('iconP2.scale.x'))
	setProperty('pea.scale.y', getProperty('iconP2.scale.y'))
end

function onUpdatePost()
if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singRIGHT' then

setProperty('red.alpha', 1)
setProperty('pea.alpha', 0)

end
if getProperty('gf.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
setProperty('red.alpha', 0)
setProperty('pea.alpha', 1)

end
end