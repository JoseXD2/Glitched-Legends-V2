	Image = 'gotham/mechanic stuff/spacebat'-- the image

	BfAnimation = 'dodge'-- Bf animation 
	X = 400-- the X for the image
	scale = 0.7-- the image scale
	Y = 200-- the Y for the image
function onCreate()
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	makeLuaSprite('Do', Image, X, Y)
	setObjectCamera('Do', 'other');
	setProperty('Do.alpha',0)
	setProperty('Do.scale.x', scale)
	setProperty('Do.scale.y', scale)
addLuaSprite('Do',false)

        makeAnimatedLuaSprite('r','gotham/mechanic stuff/batman_attack', getProperty('dad.x') - 250, getProperty('dad.y') + 250);
        addAnimationByPrefix('r','r','batman_attack',24,false);
        scaleObject('r', 1, 1);
       setProperty('r.alpha', 0);
        addLuaSprite('r', false);

        makeAnimatedLuaSprite('bfd','bf_dodge',getProperty('boyfriend.x') -200, getProperty('boyfriend.y') +650);
        addAnimationByPrefix('bfd','dod','bf_dodge_01 instancia 1',24,false);
        scaleObject('bfd', 1, 1);
       setProperty('bfd.alpha', 0);
        addLuaSprite('bfd', false);

	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'batman_note' then --Check if the note on the chart is a Shootems Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'batman_note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', -80);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

function onUpdate()
    if canDodge == true then
	if keyJustPressed("space") then
Dodged = true;
       setProperty('bfd.alpha', 1);
  objectPlayAnimation('bfd', 'dod', true)
       setProperty('boyfriend.alpha', 0);

    setProperty('boyfriend.specialAnim', true)
		characterPlayAnim('boyfriend', BfAnimation, true);
	setProperty('Do.scale.x', 0.4)
	setProperty('Do.scale.y', 0.4)

	runTimer('switch', 0.7);
	runTimer('dodo', 0.1);
canDodge = false;
end
end
end


function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'batman_note' then

	runTimer('can', 0.5);
	runTimer('Died', 1.5);
	runTimer('gb', 0.9);

		makeAnimatedLuaSprite('proyectileb','battarang_b',500,825)addAnimationByPrefix('proyectileb','dance','battarang_go',25,true)
                objectPlayAnimation('proyectileb','dance',true)
                setScrollFactor('proyectileb', 1, 1);
		addLuaSprite('proyectileb', true)
		doTweenX('watchOut', 'proyectileb', 8000, 0.9, 'linear')
       setProperty('r.alpha', 1);
       setProperty('dad.alpha', 0);
  objectPlayAnimation('r', 'r', true)
       setProperty('bfd.alpha', 1);
  objectPlayAnimation('bfd', 'dod', true)
       setProperty('boyfriend.alpha', 0);
		runTimer('thrown', 1.2)
	runTimer('switch', 0.7);


	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'batman_note'then
                setProperty('health', getProperty('health')-0.3);
		makeAnimatedLuaSprite('proyectileb','battarang_b',500,825)addAnimationByPrefix('proyectileb','dance','battarang_go',25,true)
                objectPlayAnimation('proyectileb','dance',true)
                setScrollFactor('proyectileb', 1, 1);
		addLuaSprite('proyectileb', true)
		doTweenX('watchOut', 'proyectileb', 1700, 0.15, 'linear')
       setProperty('r.alpha', 1);
       setProperty('dad.alpha', 0);
  objectPlayAnimation('r', 'r', true)
       setProperty('bfd.alpha', 1);
  objectPlayAnimation('bfd', 'dod', true)
       setProperty('boyfriend.alpha', 0);
		runTimer('thrown', 0.2)
	runTimer('switch', 0.7);
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

   elseif tag == 'Died' and Dodged == false then
        setProperty('health', getProperty('health') - 0.3);
characterPlayAnim('boyfriend', 'hurt', true)
	doTweenAlpha('by', 'Do', 0, 0.3, 'linear');
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
	doTweenAlpha('by', 'Do', 0, 0.3, 'linear');
   elseif tag == 'dodo' then
	setProperty('Do.scale.x', scale)
	setProperty('Do.scale.y', scale)


   elseif tag == 'switch' then
       setProperty('r.alpha', 0);
       setProperty('dad.alpha', 1);
       setProperty('bfd.alpha', 0);
       setProperty('boyfriend.alpha', 1);
   elseif tag == 'can' then
	canDodge = true;
       setProperty('Do.alpha', 1);

   elseif tag == 'gb' then
		makeAnimatedLuaSprite('proyectileb','battarang_b',4000,825)addAnimationByPrefix('proyectileb','dance','battarang_go',25,true)
                objectPlayAnimation('proyectileb','dance',true)
                setScrollFactor('proyectileb', 1, 1);
		addLuaSprite('proyectileb', true)
		doTweenX('watchO7ut', 'proyectileb', -3000, 0.9, 'linear')
	end
end