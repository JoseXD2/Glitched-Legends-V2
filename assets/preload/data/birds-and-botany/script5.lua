local allowCountdown = false
local warningimage = 'warnings/BIRDSANDPLANTSWARNING' -- put your image in mods/images, needs to be 1280x720
local confirmed = 0

function onCreate()
	   makeLuaSprite('did', '', 0, 0);
        makeGraphic('did',5000,3000,'000000')
              setObjectCamera('did', 'hud')
	setProperty ('did.alpha', 0)
	      addLuaSprite('did', false);
	makeLuaSprite('warningimage', warningimage, -1, 0)

	setObjectCamera('warningimage', 'other')
	
	addLuaSprite('warningimage', true)
doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
	doTweenZoom('gamezoom', 'camGame', 5, 0.1, 'quadInOut');

end

function onStartCountdown()
	if not allowCountdown then
		return Function_Stop
	end
	if allowCountdown then
		return Function_Continue
	end
end

function onUpdate()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and confirmed == 0 then
		allowCountdown = true
		startCountdown();
		doTweenAlpha('nomorewarningimage', 'warningimage', 0, 1, sineOut);
		playSound('confirmMenu');
	runTimer('get back', 15)
	setProperty ('did.alpha', 1)
		confirmed = 1
	end
	
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ESCAPE') and confirmed == 0 then
		allowCountdown = true
		confirmed = 1
		playSound('cancelMenu');
		endSong();
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'get back' then
	doTweenZoom('gamezoom', 'camGame', 0.6, 5, 'quadInOut');
		doTweenAlpha('dd','did', 0, 5,'linear')
doTweenAlpha('healthBar', 'healthBar', 1, 5, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 1, 5, 'linear')
doTweenAlpha('timeBar', 'timeBar', 1, 5, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 1, 5, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 5, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 1, 5, 'linear')

end
end