function onCreate()
        makeAnimatedLuaSprite('r','titan_tower/mechanic stuff/robin_attack', getProperty('dad.x') + 50, getProperty('dad.y') + 50);
        addAnimationByPrefix('r','r','robin_pibby_attack_long',84,false);
        scaleObject('r', 1, 1);
       setProperty('r.alpha', 0);
        addLuaSprite('r', false);
        makeAnimatedLuaSprite('bfd','bf_dodge',getProperty('boyfriend.x') -200, getProperty('boyfriend.y') +350);
        addAnimationByPrefix('bfd','dod','bf_dodge_01 instancia 1',24,false);
        scaleObject('bfd', 1, 1);
       setProperty('bfd.alpha', 0);
        addLuaSprite('bfd', false);
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'robin_note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'robin_note'); --Change texture
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
	if noteType == 'robin_note' then
		makeLuaSprite('proyectileb', 'battarang', 500, 850)
		addLuaSprite('proyectileb', true)
		doTweenX('watchOut', 'proyectileb', 8000, 0.9, 'linear')
		runTimer('thrown', 1.2)

       setProperty('r.alpha', 1);
       setProperty('dad.alpha', 0);
  objectPlayAnimation('r', 'r', true)
       setProperty('bfd.alpha', 1);
  objectPlayAnimation('bfd', 'dod', true)
       setProperty('boyfriend.alpha', 0);
	runTimer('switch', 0.6);

	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'robin_note'then
                setProperty('health', getProperty('health')-0.35);
		characterPlayAnim('boyfriend', 'hurt', true);
		cameraFlash('game', '0xFF0000', 1, true)
		makeLuaSprite('proyectileb', 'battarang', 500, 850)
		addLuaSprite('proyectileb', true)
		doTweenX('watchOut', 'proyectileb', 1700, 0.15, 'linear')
		runTimer('thrown', 0.2)
       setProperty('r.alpha', 1);
       setProperty('dad.alpha', 0);
  objectPlayAnimation('r', 'r', true)

	runTimer('switch', 0.6);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'thrown' then
		removeLuaSprite('proyectileb', false)
   elseif tag == 'switch' then
       setProperty('r.alpha', 0);
       setProperty('dad.alpha', 1);
       setProperty('bfd.alpha', 0);
       setProperty('boyfriend.alpha', 1);
	end
end