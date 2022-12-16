function onCreatePost()
	--Variable Shit
		TheCustomZoneName = "Among us isn't funny" --custom zone name text.
		CustomZoneName = false -- put to true if you want a custom zone name or else it will be the song name.
		ZoneFont = "Andes.ttf" -- the font used for the zone name.
		barname = 'FNF PE' -- the text on the red bar you want displayed, the options are: 'S3' 'SK' 'S3&K' 'FNF' 'FNF no line' 'full FNF' 'PE' 'FNF PE' 'FNF & PE' 'FNF + PE' 'Blank'
		actnum = '1' -- the act number you want displayed, the options are: '1' '2' '1 no act text' '2 no act text'
		zone = 'zone' -- the text that says "ZONE", you can change it to whatever you want or leave it blank if you don't want anything to show there.

end
function onCreate()
		makeLuaSprite('thelogo', 'iconcollab', 1500, 200)
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')
		addLuaSprite('thelogo', true)
end
local allowCountdown = false
function onStartCountdown()
	if not allowCountdown then
		runTimer('startText', 0.1);
		runTimer('countdown', 2)
		allowCountdown = true;
		--startCountdown()
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' and not CustomZoneName then
		makeLuaSprite('bar', 'S3 Title Card/'.. barname.. ' Redbar', 100, -1000)
		setObjectCamera('bar', 'hud')
		setProperty('bar.antialiasing', false)
		scaleObject('bar', 3, 3);

		addLuaSprite('bar', true)
		makeLuaText('text', songName, 2000, 2200, 250)
		setTextSize('text', 130)
		setTextBorder('text', 0)
		setTextFont('text', ZoneFont)
		makeLuaText('zone', zone, 2000, 2200, 350)
		setTextSize('zone', 130)
		setTextBorder('zone', 0)
		setTextFont('zone', ZoneFont)
		makeLuaSprite('act', 'S3 Title Card/Act'.. actnum, 2200, 500)
		setProperty('act.antialiasing', false)
		scaleObject('act', 4, 4);
		setObjectCamera('act', 'hud')
		addLuaText('text')
		addLuaText('zone')
		addLuaSprite('act', true)

		runTimer('appear', 0.3, 1)
		runTimer('fadeout', 2, 1)
		runTimer('flyoff', 3, 1)
	end
	if tag == 'startText' and CustomZoneName then
		makeLuaSprite('bar', 'S3 Title Card/'.. barname.. ' Redbar', 100, -1000)
		setObjectCamera('bar', 'hud')
		setProperty('bar.antialiasing', false)
		scaleObject('bar', 3, 3);
		makeLuaSprite('black', 'black', 0, 0);
		addLuaSprite('black', true);
		setObjectCamera('black', 'hud');
		addLuaSprite('bar', true)
		makeLuaText('text', TheCustomZoneName, 2000, 2200, 250)
		setTextSize('text', 130)
		setTextBorder('text', 0)
		setTextFont('text', ZoneFont)
		makeLuaText('zone', zone, 2000, 2200, 350)
		setTextSize('zone', 130)
		setTextBorder('zone', 0)
		setTextFont('zone', ZoneFont)
		makeLuaSprite('act', 'S3 Title Card/Act'.. actnum, 2200, 500)
		setProperty('act.antialiasing', false)
		scaleObject('act', 4, 4);
		setObjectCamera('act', 'hud')
		addLuaText('text')
		addLuaText('zone')
		addLuaSprite('act', true)

		runTimer('appear', 0.3, 1)
		runTimer('fadeout', 2, 1)
		runTimer('flyoff', 3, 1)

	elseif tag == 'appear' then
		doTweenY('bartween', 'bar', -100, 1.2, 'circInOut')
		doTweenX('texttween', 'text', -400, 1.2, 'circInOut')
		doTweenX('zonetween', 'zone', -200, 1.2, 'circInOut')
		doTweenX('acttween', 'act', 800, 1.2, 'circInOut')
		doTweenX('ween', 'thelogo', 500, 1.2, 'circInOut')

	end
	if tag == 'fadeout' then
		doTweenAlpha('blackfade', 'black', 0, 0.5, 'circInOut')
	end
	if tag == 'flyoff' then
		doTweenY('bartween', 'bar', -1000, 1.2, 'circInOut')
		doTweenX('texttween', 'text', 2200, 1.2, 'circInOut')
		doTweenX('zonetween', 'zone', 2200, 1.2, 'circInOut')
		doTweenX('acttween', 'act', 2200, 1.2, 'circInOut')
		doTweenX('ween', 'thelogo', 2200, 1.2, 'circInOut')
	end
	if tag == 'countdown' then
		startCountdown()
	end
end

function onTweenCompleted(tag)
	if tag == 'act' then
		removeLuaSprite('act')
		removeLuaSprite('bar')
		removeLuaText('zone')
		removeLuaText('text')
		removeLuaText('thelogo')
	end
end