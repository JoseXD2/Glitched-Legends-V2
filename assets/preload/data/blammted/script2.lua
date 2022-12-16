local allowCountdown = false
local warningimage = 'warnings/PICOWARNING' -- put your image in mods/images, needs to be 1280x720
local confirmed = 0

function onCreate()
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
	if getPropertyFromClass('flixel.FlxG', 'mouse.visible') and confirmed == 0 then
		setProperty('key_shift.visible', true)
                setProperty('key_space.visible', false)
		
		allowCountdown = true
		startCountdown();
		doTweenAlpha('nomorewarningimage', 'warningimage', 0, 1, sineOut);
		playSound('confirmMenu');
		confirmed = 1
	end
	
	if getPropertyFromClass('flixel.FlxG', 'mouse.visible') and confirmed == 0 then
		setProperty('key_shift.visible', true)
                setProperty('key_space.visible', false)
		
		allowCountdown = true
		confirmed = 1
		playSound('cancelMenu');
		endSong();
	end
end
