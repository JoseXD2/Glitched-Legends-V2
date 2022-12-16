
	Sound_after_hit = 'shoot'-- the sound that begin after you hit the space bar

can = true
old = true
tim = 0

function onCreatePost()
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);


        makeAnimatedLuaSprite('bfao','theater/mechanic stuff/bf_attack_old',getProperty('boyfriend.x') -350, getProperty('boyfriend.y') +250);
        addAnimationByPrefix('bfao','bfao','bf_attack',24,false);
        scaleObject('bfao', 1, 1);
       setProperty('bfao.alpha', 0);
        addLuaSprite('bfao', false);


        makeAnimatedLuaSprite('bfro','theater/mechanic stuff/bf_reload_old',getProperty('boyfriend.x') -150, getProperty('boyfriend.y') +320);
        addAnimationByPrefix('bfro','bfro','bf_reload',24,false);
        scaleObject('bfro', 1, 1);
       setProperty('bfro.alpha', 0);
        addLuaSprite('bfro', false);



        makeAnimatedLuaSprite('bfa','bf_attack',getProperty('boyfriend.x') -350, getProperty('boyfriend.y') +250);
        addAnimationByPrefix('bfa','bfa','bf_attack',24,false);
        scaleObject('bfa', 1, 1);
       setProperty('bfa.alpha', 0);
        addLuaSprite('bfa', false);


        makeAnimatedLuaSprite('bfr','bf_reload',getProperty('boyfriend.x') -150, getProperty('boyfriend.y') +320);
        addAnimationByPrefix('bfr','bfr','bf_reload',24,false);
        scaleObject('bfr', 1, 1);
       setProperty('bfr.alpha', 0);
        addLuaSprite('bfr', false);

makeLuaText('cold', '0',0,140,300)
getProperty('scoreTxt.x');
setTextSize('cold', 130);
setTextBorder('cold', 6, '5B51A6');
addLuaText('cold');



end

function onUpdatePost(elasped)

setTextString('cold', ''..tim);

end


function onUpdate()

if can == true then
	   if (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 300) and (getMouseY('camHUD') > 402.5 and getMouseY('camHUD') < 520 and mousePressed('left')) or keyjustPressed('space') then

runTimer('now_you_can', 5)
runTimer('you_cant', 0.1)
runTimer('0', 0.01)
runTimer('5', 1, 5)
		cameraShake('camGame', 0.01, 0.2)
		cameraShake('camHud', 0.01, 0.2)
setProperty('cold.alpha', 0.5)
		objectPlayAnimation('shoot', 'Pressed', true);
setTextBorder('cold', 6, 'FFEA00');
		playSound(Sound_after_hit, 1);
        
setProperty('health', getProperty('health') + 0.4)

       setProperty('boyfriend.alpha', 0);
if old == true then
        objectPlayAnimation('bfao','bfao', false);
       setProperty('bfao.alpha', 1);
runTimer('reload_timeo', 0.5)
end
if old == false then
        objectPlayAnimation('bfa','bfa', false);
       setProperty('bfa.alpha', 1);
runTimer('reload_time', 0.5)

end
can = false


end
end
end

function onTimerCompleted(tag)
if tag == 'now_you_can' then
can = true
setProperty('cold.alpha', 1)
setTextBorder('cold', 6, '5B51A6');
objectPlayAnimation('shoot', 'nPress', false);
elseif tag == 'you_cant' then
objectPlayAnimation('shoot', 'colddown', false);
setTextBorder('cold', 6, '000000');
elseif tag == '0' then
tim = tim + 5
elseif tag == '5' then
tim = tim - 1
elseif tag == 'reload_timeo' then
runTimer('reload_time_overo', 0.5)

       setProperty('bfao.alpha', 0);
        objectPlayAnimation('bfro','bfro', false);
       setProperty('bfro.alpha', 1);

elseif tag == 'reload_time' then
runTimer('reload_time_over', 0.5)
       setProperty('bfa.alpha', 0);
        objectPlayAnimation('bfr','bfr', false);
       setProperty('bfr.alpha', 1);
elseif tag == 'reload_time_overo' then

       setProperty('bfro.alpha', 0);
       setProperty('boyfriend.alpha', 1);

elseif tag == 'reload_time_over' then
       setProperty('bfr.alpha', 0);
       setProperty('boyfriend.alpha', 1);
end
end

function onCreate()
	makeAnimatedLuaSprite('shoot', 'theater/mechanic stuff/attackthing', 30, 402.5);
	addAnimationByPrefix('shoot', 'nPress', 'shootnormal', 24, false);
	addAnimationByPrefix('shoot', 'Pressed', 'shootcolddown', 24, false);
	addAnimationByPrefix('shoot', 'colddown', 'shootbroken', 24, false);
scaleObject('shoot', 1, 1)
    objectPlayAnimation('shoot', 'nPress', true)
	addLuaSprite('shoot', false);
	setObjectCamera('shoot', 'hud');
end

function opponentNoteHit()
       health = getProperty('health')
       setProperty('health', health- 0.015);


	end


function onStepHit()
if curStep == 542 then

old = false
end
end