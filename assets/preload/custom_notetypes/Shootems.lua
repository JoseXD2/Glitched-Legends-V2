function onCreate()

makeAnimatedLuaSprite('shoot', 'city/mechanic stuff/pico_attack', -170, 190)
setProperty('shoot.alpha', 0)
addAnimationByPrefix('shoot','shooting','picor_pibby_attack instancia 1',44,false)
	addLuaSprite('shoot', true)
		setObjectOrder('shoot', 5)
        makeAnimatedLuaSprite('bfd','bf_dodge',getProperty('boyfriend.x') -200, getProperty('boyfriend.y') +350);
        addAnimationByPrefix('bfd','dod','bf_dodge_01 instancia 1',24,false);
		setObjectOrder('bfd', 6)
        scaleObject('bfd', 1, 1);
       setProperty('bfd.alpha', 0);
        addLuaSprite('bfd', true);

        makeAnimatedLuaSprite('bfh','bf_hurt', getProperty('boyfriend.x') - 80, getProperty('boyfriend.y') + 330);
        addAnimationByPrefix('bfh','doh','bf_hurt',24,false);
        scaleObject('bfh', 1, 1);
       setProperty('bfh.alpha', 0);
		setObjectOrder('bfh', 7)
        addLuaSprite('bfh', true);

	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Shootems' then --Check if the note on the chart is a Shootems Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Shootems_Assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -65);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 35);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end
local cloB = false

function onEvent(name, value1, value2)
	if name == 'cinematic' and value1 == 'a' then

cloB = true
end
	if name == 'cinematic' and value1 == 'b' then
cloB = false

end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Shootems' then
if cloB == false then
       setProperty('bfd.alpha', 1);
setProperty('shoot.alpha', 1)
doTweenColor('fix', 'shoot', 'FFFFFF', 0.000000001, 'linear')
doTweenColor('fix2', 'bfd', 'FFFFFF', 0.0000000001, 'linear')
end
if cloB == true then
doTweenColor('fix', 'shoot', '000000', 0.000000001, 'linear')
doTweenColor('fix2', 'bfd', '000000', 0.00000000001, 'linear')
end
       setProperty('boyfriend.alpha', 0);
setProperty('dad.alpha', 0)
objectPlayAnimation('bfd', 'dod', true)
objectPlayAnimation('shoot', 'shooting', true)
			makeLuaSprite('bullet', 'bulletPico_asset', 300, 587)
		addLuaSprite('bullet', true)

		doTweenX('itsComin', 'bullet', 3600, 0.5, 'linear')

		cameraFlash('game', '0xFFFFFF', 0.2, true)


		cameraShake('camGame', 0.01, 0.2)
		cameraShake('camHud', 0.01, 0.2)
		playSound('shoot', 0.1)
			runTimer('shotsFired', 0.4)
		end
end

function noteMiss(id, direction, noteType, isSustainNote)
	local C = 0
	if noteType == 'Shootems' then
if cloB == false then
       setProperty('bfh.alpha', 1);
setProperty('shoot.alpha', 1)
doTweenColor('fix', 'shoot', 'FFFFFF', 0.000000001, 'linear')
doTweenColor('fix2', 'bfh', 'FFFFFF', 0.0000000001, 'linear')
end
if cloB == true then
doTweenColor('fix', 'shoot', '000000', 0.0001, 'linear')
doTweenColor('fix2', 'bfh', '000000', 0.0001, 'linear')
end

setProperty('dad.alpha', 0)
objectPlayAnimation('shoot', 'shooting', true);
	runTimer('shotsFired', 0.4)
  objectPlayAnimation('bfh', 'doh', true)
       setProperty('boyfriend.alpha', 0);
		setProperty('health', getProperty('health')- 0.01)
		C = C + 5
		repeat
			C = C - 1
			runTimer('attack', 0.01, 50)
			if C < 0 then
				C = 0
			end
		until C == 0
		cameraShake('camGame', 0.01, 1)
		cameraShake('camHud', 0.01, 1)
			makeLuaSprite('bullet', 'bulletPico_asset', 340, 587)
		addLuaSprite('bullet', true)

		doTweenX('itsComin', 'bullet', 4000, 0.5, 'linear')
		cameraFlash('game', '0xFF0009', 0.4, true)
		playSound('shoot', 0.1)


end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'attack' then
			setProperty('health', getProperty('health')- 0.01)
	elseif tag == 'shotsFired' then

setProperty('shoot.alpha', 0)
setProperty('dad.alpha', 1)
       setProperty('bfd.alpha', 0);
       setProperty('bfh.alpha', 0);
       setProperty('boyfriend.alpha', 1);


	end
end

