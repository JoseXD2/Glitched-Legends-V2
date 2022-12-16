local allowCountdown = false
local warningimage = 'warnings/DARKPIBBYWARNING' -- put your image in mods/images, needs to be 1280x720
local confirmed = 0

function onCreate()
	makeLuaSprite('warningimage', warningimage, -80, 0)
scaleObject ('warningimage', 1.1, 1)
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
		doTweenAngle('1', 'unMBar', 0, 1, sineOut);
		doTweenAngle('2', 'unMBar2', 0, 1, sineOut);
		doTweenAngle('3', 'Bar', 0, 1, sineOut);
		doTweenY('4', 'unMBar', 100, 1, sineOut);
		doTweenX('5', 'unMBar', 1200, 1, sineOut);
		doTweenY('6', 'Bar', 100, 1, sineOut);
		doTweenX('7', 'Bar', 1200, 1, sineOut);
		doTweenY('8', 'unMBar2', 70, 1, sineOut);
		doTweenX('9', 'unMBar2', 1155, 1, sineOut);
		playSound('confirmMenu');
		confirmed = 1
	end
	
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ESCAPE') and confirmed == 0 then
		allowCountdown = true
		confirmed = 1
		playSound('cancelMenu');
		endSong();
	end
end

