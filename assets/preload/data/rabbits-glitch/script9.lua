function onCreate()

	makeAnimatedLuaSprite('olduglyHB','oldbar',0,0)addAnimationByPrefix('olduglyHB','dance','bar_remake',25,true)
        objectPlayAnimation('olduglyHB','dance',true)
	setObjectCamera('olduglyHB', 'hud')
    setProperty('olduglyHB.alpha', 1)
	setScrollFactor('olduglyHB', 0.9, 0.9)
	addLuaSprite('olduglyHB', true)


	makeAnimatedLuaSprite('uglyHB','glitched_healtbar',0,0)addAnimationByPrefix('uglyHB','dance','bar_remake',25,true)
        objectPlayAnimation('uglyHB','dance',true)
	setObjectCamera('uglyHB', 'hud')
    setProperty('uglyHB.alpha', 0)
	setScrollFactor('uglyHB', 0.9, 0.9)
	
	addLuaSprite('uglyHB', true)
end

function onCreatePost()
	--Healthbar cool right? c:
    setProperty('olduglyHB.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))
    setProperty('olduglyHB.x', getProperty('healthBar.x') - 40)
    setProperty('olduglyHB.angle', getProperty('healthBar.angle'))
    setProperty('olduglyHB.y', getProperty('healthBar.y')  - 128)
    setProperty('olduglyHB.scale.x', getProperty('healthBar.scale.x'))
    setProperty('olduglyHB.scale.y', getProperty('healthBar.scale.y'))
    setObjectOrder('olduglyHB', 4)
	setObjectOrder('healthBar', 3)
	setObjectOrder('healthBarBG', 2)


    setProperty('uglyHB.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))
    setProperty('uglyHB.x', getProperty('healthBar.x') - 40)
    setProperty('uglyHB.angle', getProperty('healthBar.angle'))
    setProperty('uglyHB.y', getProperty('healthBar.y')  - 128)
    setProperty('uglyHB.scale.x', getProperty('healthBar.scale.x'))
    setProperty('uglyHB.scale.y', getProperty('healthBar.scale.y'))
    setObjectOrder('uglyHB', 4)
	setObjectOrder('healthBar', 3)
	setObjectOrder('healthBarBG', 2)
end

-- hi there, cool right? 

function onEvent(name,value1,value2)

	if name == 'Cinematics' then

if value1 == '1' then
	doTweenAlpha('AlphaTween90', 'animatedbficono', 0, 0.25)
	doTweenAlpha('AlphaTween91', 'oanimatedicon', 0, 0.25)
	doTweenAlpha('AlphaTween92', 'olduglyHB', 0, 0.25)


elseif value1 == '2' then
	doTweenAlpha('AlphaTween90', 'animatedbficono', 1, 0.25)
	doTweenAlpha('AlphaTween91', 'oanimatedicon', 1, 0.25)

	doTweenAlpha('AlphaTween93', 'uglyHB', 1, 0.25)

end
end
end