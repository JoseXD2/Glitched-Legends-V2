function onCreate()
	makeLuaSprite('black', 'blam/black', -200, -200)
	scaleObject('black', 500, 500);
	setScrollFactor('black', 0,0)
	setProperty('black.alpha', 0)
	addLuaSprite('black', false)
	makeLuaSprite('blue', 'blam/blue', -200, -200)
	setBlendMode('blue', 'multiply')
	scaleObject('blue', 500, 500);
	setScrollFactor('blue', 0,0)
	setProperty('blue.alpha', 0)
	addLuaSprite('blue', true)
	makeLuaSprite('orange', 'blam/orange', -200, -200)
	setBlendMode('orange', 'multiply')
	scaleObject('orange', 500, 500);
	setScrollFactor('orange', 0,0)
	setProperty('orange.alpha', 0)
	addLuaSprite('orange', true)
	makeLuaSprite('green', 'blam/green', -200, -200)
	setBlendMode('green', 'multiply')
	scaleObject('green', 500, 500);
	setScrollFactor('green', 0,0)
	setProperty('green.alpha', 0)
	addLuaSprite('green', true)
	makeLuaSprite('pink', 'blam/pink', -200, -200)
	setBlendMode('pink', 'multiply')
	scaleObject('pink', 500, 500);
	setScrollFactor('pink', 0,0)
	setProperty('pink.alpha', 0)
	addLuaSprite('pink', true)
	makeLuaSprite('red', 'blam/red', -200, -200)
	setBlendMode('red', 'multiply')
	scaleObject('red', 500, 500);
	setScrollFactor('red', 0,0)
	setProperty('red.alpha', 0)
	addLuaSprite('red', true)
	this = 0
end
function onEvent(name, value1, value2)
	if name == 'Blammed Lights' then
		if value1 == '0' then --turn off
			this = 2
			doTweenAlpha('leave', 'black', 0, 0.55, 'linear')
			doTweenAlpha('leaveb', 'blue', 0, 0.55, 'linear')
			doTweenAlpha('leavep', 'pink', 0, 0.55, 'linear')
			doTweenAlpha('leaver', 'red', 0, 0.55, 'linear')
			doTweenAlpha('leaveo', 'orange', 0, 0.55, 'linear')
			doTweenAlpha('leaveg', 'green', 0, 0.55, 'linear')
			Color = 0
		elseif value1 == '1' then --blue
			if this == 0 then --the fade in
				doTweenAlpha('background', 'black', 1, 0.66, 'linear')
				doTweenAlpha('blue', 'blue', 0.7, 0.66, 'linear')
				setProperty('blue.visible', true)
			else --for the quick flash
				doTweenAlpha('blue', 'blue', 0.7, 0.001, 'linear')
				doTweenAlpha('black', 'black', 1, 0.001, 'linear')
				setProperty('blue.visible', true)
				setProperty('green.visible', false)
				setProperty('pink.visible', false)
				setProperty('red.visible', false)
				setProperty('orange.visible', false)
			end
			Color = 1
		elseif value1 == '2' then --green
			if this == 0 then --the fade in
				doTweenAlpha('background', 'black', 1, 0.66, 'linear')
				doTweenAlpha('green', 'green', 0.7, 0.66, 'linear')
				setProperty('green.visible', true)
			else --for the quick flash
				setProperty('blue.visible', false)
				doTweenAlpha('black', 'black', 1, 0.001, 'linear')
				doTweenAlpha('green', 'green', 0.7, 0.001, 'linear')
				setProperty('green.visible', true)
				setProperty('pink.visible', false)
				setProperty('red.visible', false)
				setProperty('orange.visible', false)
			end
			Color = 2
		elseif value1 == "3" then --pink
			if this == 0 then --the fade in
				doTweenAlpha('background', 'black', 1, 0.66, 'linear')
				doTweenAlpha('pink', 'pink', 0.7, 0.66, 'linear')
				setProperty('pink.visible', true)
			else --for the quick flash
				setProperty('blue.visible', false)
				setProperty('green.visible', false)
				doTweenAlpha('black', 'black', 1, 0.001, 'linear')
				setProperty('pink.visible', true)
				doTweenAlpha('pink', 'pink', 0.7, 0.001, 'linear')
				setProperty('red.visible', false)
				setProperty('orange.visible', false)
			end
			Color = 3
		elseif value1 == '4' then --red
			if this == 0 then --the fade in
				doTweenAlpha('background', 'black', 1, 0.66, 'linear')
				doTweenAlpha('red', 'red', 0.7, 0.66, 'linear')
				setProperty('red.visible', true)
			else --for the quick flash
				setProperty('blue.visible', false)
				setProperty('green.visible', false)
				doTweenAlpha('black', 'black', 1, 0.001, 'linear')
				setProperty('pink.visible', false)
				setProperty('red.visible', true)
				doTweenAlpha('red', 'red', 0.7, 0.001, 'linear')
				setProperty('orange.visible', false)
			end
			Color = 4
		elseif value1 == '5' then --orange
			if this == 0 then --the fade in
				doTweenAlpha('background', 'black', 1, 0.66, 'linear')
				doTweenAlpha('orange', 'orange', 0.7, 0.66, 'linear')
				setProperty('orange.visible', true)
			else --for the quick flash
				setProperty('blue.visible', false)
				setProperty('green.visible', false)
				setProperty('pink.visible', false)
				doTweenAlpha('black', 'black', 1, 0.001, 'linear')
				setProperty('red.visible', false)
				setProperty('orange.visible', true)
				doTweenAlpha('orange', 'orange', 0.7, 0.001, 'linear')
			end
			Color = 5
		else --random
			lol = math.floor(math.random(1, 5)) --1200
			if lol == Color then
				triggerEvent('Blammed Lights', 6, '')
			else
				triggerEvent('Blammed Lights', lol, '')
			end
		end
		if this == 2 then
		else
			this = 1
		end
	end
end

function onBeatHit()
	if curBeat % 4 then
		if this == 2 then
			this = 3
		elseif this == 3 then
			this = 0
		end
	end
end