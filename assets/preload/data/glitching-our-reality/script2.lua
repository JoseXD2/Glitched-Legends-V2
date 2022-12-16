
function onCreate()

		makeAnimatedLuaSprite('animatedicon', 'icons/mrfazbearanimatedicon', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon', 'normal', 'mr fabear_n',24, true)
		addAnimationByPrefix('animatedicon', 'losing', 'mr fazbear_l', 24, true)
		addAnimationByPrefix('animatedicon', 'winning', 'mr fazbear_w', 24, true)
		setScrollFactor('animatedicon', 0, 0)
		setObjectCamera('animatedicon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon', true)
                setObjectOrder('animatedicon', 99)
		objectPlayAnimation('animatedicon', 'normal', false)
setProperty('animatedicon.alpha', 1)

		makeAnimatedLuaSprite('animatedicon2', 'icons/plauseranimatedicons', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon2', 'normal', 'plauser_n',24, true)
		addAnimationByPrefix('animatedicon2', 'losing', 'plauser_n copia', 24, true)
		addAnimationByPrefix('animatedicon2', 'winning', 'plauser_w', 24, true)
		setScrollFactor('animatedicon2', 0, 0)
		setObjectCamera('animatedicon2', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon2', true)
                setObjectOrder('animatedicon2', 99)
		objectPlayAnimation('animatedicon2', 'normal', false)
setProperty('animatedicon2.alpha', 0)

		makeAnimatedLuaSprite('animatedicon3', 'icons/monyanimatedicons', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon3', 'normal', 'monyy_n',24, true)
		addAnimationByPrefix('animatedicon3', 'losing', 'monyy_l', 24, true)
		addAnimationByPrefix('animatedicon3', 'winning', 'monyy_w', 24, true)
		setScrollFactor('animatedicon3', 0, 0)
		setObjectCamera('animatedicon3', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon3', true)
                setObjectOrder('animatedicon3', 99)
		objectPlayAnimation('animatedicon3', 'normal', false)
setProperty('animatedicon3.alpha', 0)
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

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon2', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon2', 'winning', false)
		else
			objectPlayAnimation('animatedicon2', 'normal', false)
		end

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon3', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon3', 'winning', false)
		else
			objectPlayAnimation('animatedicon3', 'normal', false)
		end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon.x', getProperty('iconP2.x')-65)
	setProperty('animatedicon.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon.y', getProperty('iconP2.y'))
	setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y'))

	setProperty('animatedicon2.x', getProperty('iconP2.x')-55)
	setProperty('animatedicon2.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon2.y', getProperty('iconP2.y') - 25)
	setProperty('animatedicon2.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon2.scale.y', getProperty('iconP2.scale.y'))

	setProperty('animatedicon3.x', getProperty('iconP2.x')-35)
	setProperty('animatedicon3.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon3.y', getProperty('iconP2.y') - 15)
	setProperty('animatedicon3.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon3.scale.y', getProperty('iconP2.scale.y'))
end

function onStepHit()
if curStep == 1040 then
triggerEvent('Change Character', 'dad', 'plauser_pibby')
setProperty('animatedicon2.alpha', 1)
setProperty('animatedicon.alpha', 0)
elseif curStep == 1940 then
setProperty('animatedicon3.alpha', 1)
setProperty('animatedicon2.alpha', 0)
triggerEvent('Change Character', 'dad', 'mony_pibby')
elseif curStep == 3664 then
doTweenAlpha('ji', 'animatedicon3', 0, 3, 'linear')
elseif curStep == 4336 then
doTweenAlpha('ji9', 'camHUD', 0, 6, 'linear')
doTweenAlpha('ji99', 'camGame', 0, 6, 'linear')
doTweenAlpha('ji98', 'animatedbficon', 0, 6, 'linear')

end
end