local allowCountdown = false
local warningimage = 'warnings/NICOLEWARNING' -- put your image in mods/images, needs to be 1280x720
local confirmed = 0

function onCreate()



	   makeLuaSprite('did', '', 0, 0);
        makeGraphic('did',5000,3000,'000000')
              setObjectCamera('did', 'other')
	setProperty ('did.alpha', 0)
	      addLuaSprite('did', true);
	makeLuaSprite('warningimage', warningimage, -1, 0)

	setObjectCamera('warningimage', 'other')
	

	addLuaSprite('warningimage', true)

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
	setProperty ('did.alpha', 1)
	runTimer('get back', 3)
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
		doTweenAlpha('dd','did', 0, 5,'linear')
end
end