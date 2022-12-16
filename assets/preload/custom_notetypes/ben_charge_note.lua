function onCreate()
makeAnimatedLuaSprite('10', 'void/mechanic stuff/ben_attack', 0, 300)
setProperty('10.alpha', 0)
addAnimationByPrefix('10','ben','ben10_attack instancia 1',24,false)
	addLuaSprite('10', true)

makeAnimatedLuaSprite('fire', 'void/mechanic stuff/fireball', 340, 400)
setProperty('fire.alpha', 0)
addAnimationByPrefix('fire','comeing','fire instancia 1',24,true)
addAnimationByPrefix('fire','gone','fire_splash instancia 1',24,false)
		addLuaSprite('fire', true)

			makeLuaSprite('di', 'void/mechanic stuff/diamonds', 340, 587)
        scaleObject('di', 2.5, 2.5);
setProperty('di.alpha', 0)
		addLuaSprite('di', true)

			makeLuaSprite('vi', 'void/mechanic stuff/vines', 1500, 0)
        scaleObject('vi', 0.5, 0.5);
	setProperty('vi.angle', 180);
setObjectCamera('vi', 'other')
		addLuaSprite('vi', true)
			makeLuaSprite('vi2', 'void/mechanic stuff/vines2', -1000, 100)
        scaleObject('vi2', 0.5, 0.5);
setObjectCamera('vi2', 'other')
setProperty('vi2.alpha', 1)
		addLuaSprite('vi2', true)

if downscroll then
			makeLuaSprite('vi', 'void/mechanic stuff/vines', 1500, 530)
        scaleObject('vi', 0.5, 0.5);
	setProperty('vi.angle', 180);
setObjectCamera('vi', 'other')
		addLuaSprite('vi', true)
			makeLuaSprite('vi2', 'void/mechanic stuff/vines2', -1000, 540)
        scaleObject('vi2', 0.5, 0.5);
setObjectCamera('vi2', 'other')
setProperty('vi2.alpha', 1)
		addLuaSprite('vi2', true)
end
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'ben_charge_note' then --Check if the note on the chart is a Bullet Note

			setPropertyFromGroup('unspawnNotes', i, 'texture', 'ben_charge_note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); --custom notesplash color, why not

			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'ben_charge_note' then
		playSound('sound_ben', 0.1);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		cameraShake('camGame', 0.01, 0.2)

    end
end
damage = 0
function noteMiss(id, direction, noteType, isSustainNote)
	local C = 0
	local C2 = 0
	if noteType == 'ben_charge_note'then
		playSound('sound_ben', 0.1);
    if direction == 0 then

		triggerEvent('Change Scroll Speed', '1.7', '0.1')
		cameraShake('camGame', 0.1, 0.1)
		characterPlayAnim('dad', 'singLEFT', true);
		runTimer('ti', 1);
    elseif direction == 1 then
damage = damage + 0.01
		C2 = C2 + 0
		repeat
			C2 = C2 - 1
			runTimer('attack2', 1, 99999)
			if C2 < 0 then
				C2 = 0
			end
		until C2 == 0
setProperty('di.alpha', 1)
setProperty('10.alpha', 1)
setProperty('dad.alpha', 0)
	doTweenX('it', 'di', 1400, 0.1, 'linear')
objectPlayAnimation('10', 'ben', true);
		runTimer('temp', 0.4);
    elseif direction == 2 then
	doTweenX('dodo', 'vi.scale', 2, 1, 'linear');
	doTweenX('dodo2', 'vi', 500, 1, 'linear');

	doTweenX('dodo3', 'vi2.scale', 2, 1, 'linear');
	doTweenX('dodo4', 'vi2', 500, 1, 'linear');
        setProperty('boyfriend.stunned', true)
        runTimer('stunduration', 1)

    elseif direction == 3 then
		C = C + 5
		repeat
			C = C - 1
			runTimer('attack', 0.01, 150)
			if C < 0 then
				C = 0
			end
		until C == 0
setProperty('fire.alpha', 1)
	doTweenX('itsCing', 'fire', 1400, 0.2, 'linear')
		playSound('sound_dead', 0.5);
		characterPlayAnim('dad', 'singRIGHT', true);



	end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'attack' then
			setProperty('health', getProperty('health')- 0.01)
	elseif tag == 'attack2' then
			setProperty('health', getProperty('health')- damage)
	elseif loopsLeft >= 1 then
		setProperty('health', getProperty('health')-0.001)

	elseif tag == 'ti' then
		triggerEvent('Change Scroll Speed', '1', '0.7');
	elseif tag == 'temp' then
setProperty('di.alpha', 0)
setProperty('10.alpha', 0)
setProperty('dad.alpha', 1)
    elseif tag == 'stunduration' then
	doTweenX('dodo5', 'vi.scale', 0.5, 1, 'linear');
	doTweenX('dodo6', 'vi', 1500, 1, 'linear');
	doTweenX('dodo7', 'vi2.scale', 0.5, 1, 'linear');
	doTweenX('dodo8', 'vi2', -1000, 1, 'linear');
        setProperty('boyfriend.stunned', false)
	end
end
function onTweenCompleted(tag)
	if tag == 'itsCing' then
objectPlayAnimation('fire', 'gone', true);
	doTweenAlpha('idj', 'fire', 0, 0.4, 'linear')
		characterPlayAnim('boyfriend', 'hurt', true);
	elseif tag == 'it' then
	doTweenAlpha('idj', 'di', 0, 0.01, 'linear')
		characterPlayAnim('boyfriend', 'hurt', true);
end
end
