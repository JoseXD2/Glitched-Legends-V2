

local splash = {'1', '2', '3'}
local i = 1
function onCreate()
    for i = 1,20 do
	makeLuaSprite('sp'..i, 'garden/mechanic stuff/peasplash1', getRandomInt(0, 0),getRandomInt(0, 0) )
        scaleObject('sp'..i, nil, nil)

        setProperty('sp'..i..'.alpha', 1)
        setObjectCamera('sp'..i, 'other')
        addLuaSprite('sp'..i, true)

	makeLuaSprite('spp'..i, 'garden/mechanic stuff/peasplash2', getRandomInt(0, 0),getRandomInt(0, 0) )
        scaleObject('spp'..i, nil, nil)

        setProperty('spp'..i..'.alpha', 1)
        setObjectCamera('spp'..i, 'other')
        addLuaSprite('spp'..i, true)

	makeLuaSprite('sppp'..i, 'garden/mechanic stuff/peasplash3', getRandomInt(0, 0),getRandomInt(0, 0) )
        scaleObject('sppp'..i, nil, nil)

        setProperty('sppp'..i..'.alpha', 1)
        setObjectCamera('sppp'..i, 'other')
        addLuaSprite('sppp'..i, true)
end
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'pea_note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'pea_note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', -80);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end

end
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'pea_note' then
		characterPlayAnim('boyfriend', 'dodge', true)
    playSound('peasplash',0.5);
		cameraShake('camGame', 0.1, 0.1)
		makeLuaSprite('proyectilepea', 'pea', 300, 500)
		addLuaSprite('proyectilepea', true)
		doTweenX('watchOut', 'proyectilepea', 4000, 0.6, 'linear')
		characterPlayAnim('gf', 'singRIGHT', true)

end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'pea_note'then
		makeLuaSprite('proyectilepea', 'pea', 300, 500)
		addLuaSprite('proyectilepea', true)
		doTweenX('watchOut', 'proyectilepea', 1700, 0.2, 'linear')
		characterPlayAnim('gf', 'singRIGHT', true)
		characterPlayAnim('boyfriend', 'hurt', true)
    playSound('peasplash',0.5);
		cameraShake('camGame', 0.1, 0.2)
		setProperty('health', getProperty('health')- 0.05)
            for j = 1,getRandomInt(1, 1) do
                if i == 20 then
                    i = 1
                end
	    sp = math.floor(getRandomInt(1,#splash))
	if splash[sp] == '1' then
	makeLuaSprite('sp'..i, 'garden/mechanic stuff/peasplash1', getRandomInt(200, 1100),getRandomInt(200, 700) )
        scaleObject('sp'..i, 0, 0)

	doTweenY('sp1'..i..'ScaleY', 'sp'..i..'.scale', getRandomFloat(0.3, 1), 0.07, 'linear');
	doTweenX('sp1'..i..'ScaleX', 'sp'..i..'.scale', getRandomFloat(0.3, 1), 0.07, 'linear');

        setProperty('sp'..i..'.alpha', 1)
        setObjectCamera('sp'..i, 'other')
        addLuaSprite('sp'..i, true)
                runTimer('ended'..i, 5)
                i = i + 1
end
	if splash[sp] == '2' then
	makeLuaSprite('spp'..i, 'garden/mechanic stuff/peasplash2', getRandomInt(200, 1100),getRandomInt(200, 700) )
        scaleObject('spp'..i, 0, 0)

	doTweenY('sp2'..i..'ScaleY', 'spp'..i..'.scale', getRandomFloat(1, 0.4), 0.07, 'linear');
	doTweenX('sp2'..i..'ScaleX', 'spp'..i..'.scale', getRandomFloat(1, 0.4), 0.07, 'linear');
        setProperty('spp'..i..'.alpha', 1)
        setObjectCamera('spp'..i, 'other')
        addLuaSprite('spp'..i, true)
                runTimer('ended'..i, 5)
                i = i + 1
end
	if splash[sp] == '3' then
	makeLuaSprite('sppp'..i, 'garden/mechanic stuff/peasplash3', getRandomInt(200, 1100),getRandomInt(200, 700) )
        scaleObject('sppp'..i, 0, 0)
	doTweenY('sp3'..i..'ScaleY', 'sppp'..i..'.scale', getRandomFloat(1.2, 0.3), 0.07, 'linear');
	doTweenX('sp3'..i..'ScaleX', 'sppp'..i..'.scale', getRandomFloat(1.2, 0.3), 0.07, 'linear');
        setProperty('sppp'..i..'.alpha', 1)
        setObjectCamera('sppp'..i, 'other')
        addLuaSprite('sppp'..i, true)
                runTimer('ended'..i, 5)
                i = i + 1
end
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
    for i = 1, 100 do     
        if tag == 'ended'..i then
	doTweenAlpha('do1'..i..'AlphaTween', 'sp'..i, 0, 1, 'linear');
	doTweenY('do15'..i..'SpeedY', 'sp'..i..'.velocity', 2000, 3, 'linear');
	doTweenAlpha('do2'..i..'AlphaTween', 'spp'..i, 0, 1, 'linear');
	doTweenY('do25'..i..'SpeedY', 'spp'..i..'.velocity', 2000, 3, 'linear');
	doTweenAlpha('do3'..i..'AlphaTween', 'sppp'..i, 0, 1, 'linear');
	doTweenY('do35'..i..'SpeedY', 'sppp'..i..'.velocity', 2000, 3, 'linear');

        end
    end
end

function onTweenCompleted(tag)
        if tag == 'watchOut' then
		removeLuaSprite('proyectilepea')
end
end