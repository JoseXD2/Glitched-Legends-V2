
function onCreate()

		makeAnimatedLuaSprite('animatedicon0', 'icons/mrfazbearanimatedicon', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon0', 'normal', 'mr fabear_n',24, true)
		addAnimationByPrefix('animatedicon0', 'losing', 'mr fazbear_l', 24, true)
		addAnimationByPrefix('animatedicon0', 'winning', 'mr fazbear_w', 24, true)
		setScrollFactor('animatedicon0', 0, 0)
		setObjectCamera('animatedicon0', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon0', true)
                setObjectOrder('animatedicon0', 99)
		objectPlayAnimation('animatedicon0', 'normal', false)
setProperty('animatedicon0.alpha', 0)

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

		makeAnimatedLuaSprite('animatedicon4', 'icons/sansandreanimatedicons', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon4', 'normal', 'sansandre_n instancia ',24, true)
		addAnimationByPrefix('animatedicon4', 'losing', 'sansandre_l instancia ', 24, true)
		addAnimationByPrefix('animatedicon4', 'winning', 'sansandre_w instancia ', 24, true)
		setScrollFactor('animatedicon4', 0, 0)
		setObjectCamera('animatedicon4', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon4', true)
                setObjectOrder('animatedicon4', 99)
		objectPlayAnimation('animatedicon4', 'normal', false)
setProperty('animatedicon4.alpha', 0)

		makeAnimatedLuaSprite('animatedicon5', 'icons/animatedicondusttycorrupted', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon5', 'normal', 'dustc_n',24, true)
		addAnimationByPrefix('animatedicon5', 'losing', 'dustc_l', 24, true)
		addAnimationByPrefix('animatedicon5', 'winning', 'dustc_w instancia ', 24, true)
		setScrollFactor('animatedicon5', 0, 0)
		setObjectCamera('animatedicon5', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon5', true)
                setObjectOrder('animatedicon5', 99)
		objectPlayAnimation('animatedicon5', 'normal', false)
setProperty('animatedicon5.alpha', 0)
	end
local did = true
function onUpdate(elapsed)
setProperty('animatedicon.alpha', 0) 
		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon0', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon0', 'winning', false)
		else
			objectPlayAnimation('animatedicon0', 'normal', false)
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

		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon4', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon4', 'winning', false)
		else
			objectPlayAnimation('animatedicon4', 'normal', false)
		end

		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon5', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon5', 'winning', false)
		else
			objectPlayAnimation('animatedicon5', 'normal', false)
		end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon0.x', getProperty('iconP2.x')-65)
	setProperty('animatedicon0.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon0.y', getProperty('iconP2.y'))
	setProperty('animatedicon0.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon0.scale.y', getProperty('iconP2.scale.y'))

	setProperty('animatedicon2.x', getProperty('iconP2.x')-55)
	setProperty('animatedicon2.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon2.y', getProperty('iconP2.y') - 25)
	setProperty('animatedicon2.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon2.scale.y', getProperty('iconP2.scale.y'))
	setProperty('animatedbficon.x', getProperty('iconP1.x') + 40)
if did == true then
	setProperty('animatedicon3.x', getProperty('iconP2.x')-65)
elseif did == false then
	setProperty('animatedicon3.x', getProperty('iconP2.x')-165)

end
	setProperty('animatedicon3.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon3.y', getProperty('iconP2.y') - 15)
	setProperty('animatedicon3.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon3.scale.y', getProperty('iconP2.scale.y'))

	setProperty('animatedicon4.x', getProperty('iconP2.x')-35)
	setProperty('animatedicon4.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon4.y', getProperty('iconP2.y') - 15)
	setProperty('animatedicon4.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon4.scale.y', getProperty('iconP2.scale.y'))

	setProperty('animatedicon5.x', getProperty('iconP2.x')-55)
	setProperty('animatedicon5.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon5.y', getProperty('iconP2.y') - 25)
	setProperty('animatedicon5.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon5.scale.y', getProperty('iconP2.scale.y'))


end

function onStepHit()
if curStep == 224 then
setProperty('animatedicon3.alpha', 1)
elseif curStep == 1080 then
setProperty('animatedicon3.alpha', 0)
setProperty('animatedicon0.alpha', 1)

elseif curStep == 1184 then
setProperty('animatedicon0.alpha', 0)
setProperty('animatedicon4.alpha', 1)

elseif curStep == 1279 then
setProperty('animatedicon4.alpha', 0)
setProperty('animatedicon2.alpha', 1)

elseif curStep == 1535 then
setProperty('animatedicon2.alpha', 0)
setProperty('animatedicon5.alpha', 1)
setProperty('animatedicon4.alpha', 0)
elseif curStep == 1536 then
setProperty('animatedicon2.alpha', 0)
setProperty('animatedicon5.alpha', 1)
setProperty('animatedicon4.alpha', 0)
elseif curStep == 1664 then
setProperty('animatedicon3.alpha', 1)
did = false
setProperty('animatedicon2.alpha', 0)
elseif curStep == 2064 then
		cameraFlash('game', '0x000000', 999990, true)
setProperty('animatedicon3.alpha', 0)
setProperty('animatedicon5.alpha', 0)
setProperty('animatedbficon.alpha', 0)
end
end

--setProperty('animatedicon5.alpha', 0) dusttoybonnie

--setProperty('animatedicon4.alpha', 0) inline sans

--setProperty('animatedicon3.alpha', 0) mony

--setProperty('animatedicon2.alpha', 0) PlauserYT

--setProperty('animatedicon0.alpha', 0) Mr Fazbear 

