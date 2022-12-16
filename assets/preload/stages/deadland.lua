function onCreate()
	-- background shit
	makeLuaSprite('deadback1', 'determinatedland/skydtback', -730,-1500 );
	setScrollFactor('deadback1', 0.7, 1);
        scaleObject('deadback1', 3, 3);
        addLuaSprite('deadback1', false);
        setProperty('deadback1.alpha', 1);

	makeLuaSprite('deadback21', 'determinatedland/sundt', 330,-600 );
	setScrollFactor('deadback21', 0.7, 1);
        scaleObject('deadback21', 3, 3);
        addLuaSprite('deadback21', false);
        setProperty('deadback21.alpha', 1);

	makeLuaSprite('deadback2', 'determinatedland/freedt', -730,-600 );
	setScrollFactor('deadback2', 0.8, 1);
        scaleObject('deadback2', 3, 3);
        addLuaSprite('deadback2', false);
        setProperty('deadback2.alpha', 1);

	makeLuaSprite('deadback3', 'determinatedland/dtlands', -730,500 );
	setScrollFactor('deadback3', 1, 1);
        scaleObject('deadback3', 3, 3);
        addLuaSprite('deadback3', false);
        setProperty('deadback3.alpha', 1);

        makeAnimatedLuaSprite('deadanimated','survivors/dt_sayori_survivor', 2770, 380);
        addAnimationByPrefix('deadanimated','idle','dt_sayori_durvivor',24,false);
        scaleObject('deadanimated', 1, 1);
        addLuaSprite('deadanimated', true);


        makeAnimatedLuaSprite('deadanimated2','survivors/dt_frisk_survivor', 2170, 500);
        addAnimationByPrefix('deadanimated2','idle','frisk',24,false);
        scaleObject('deadanimated2', 1, 1);
        addLuaSprite('deadanimated2', false);


end

local songle = 153000
function onSongStart()
	setProperty('songLength', songle) --fake songLength, in milliseconds

end


local activeeye = false
local active = false
function onBeatHit()
if curBeat == 128 then
activeeye = true
active = false
end

if curBeat == 63 then
active = true
end

if curBeat %2 == 0 and active == true then
		triggerEvent('Add Camera Zoom', '0.1', '0.1')
end

if curBeat %2 == 0 and activeeye == true then
triggerEvent('PopupNormal', '1', '1')
		triggerEvent('Add Camera Zoom', '0.1', '0.1')
end
if curBeat == 269 then
active = true
activeeye = false
end

if curBeat == 416 then
active = false
activeeye = true
end
--1000 = 1sec
--10000 = 10sec
end

function onUpdate()
if activeeye == true then
	setProperty('songLength', getProperty('songLength')+getRandomInt(10000, -10000))
end
if getProperty('dad.animation.curAnim.name') == 'singUP-alt' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then

            cameraShake('hud', 0.03, 0.03);
            cameraShake('game', 0.03, 0.03);
			doTweenColor('back', 'deadback1', 'FF0025', 0.1, 'linear')
			doTweenColor('b2', 'deadback21', 'FF0025', 0.1, 'linear')
			doTweenColor('back3', 'deadback3', 'FF0025', 0.1, 'linear')
			doTweenColor('b4', 'deadback2', 'FF0025', 0.1, 'linear')

			doTweenColor('bac8k', 'deadback1', '00A3FF', 0.1, 'linear')
			doTweenColor('1b2', 'deadback21', '00A3FF', 0.1, 'linear')
			doTweenColor('bac8k2', 'deadback3', '00A3FF', 0.1, 'linear')
			doTweenColor('1b22', 'deadback2', '00A3FF', 0.1, 'linear')

			doTweenColor('bac80k', 'deadback1', 'FFEB00', 0.1, 'linear')
			doTweenColor('11b2', 'deadback21', 'FFEB00', 0.1, 'linear')
			doTweenColor('bac80k2', 'deadback3', 'FFEB00', 0.1, 'linear')
			doTweenColor('11b22', 'deadback2', 'FFEB00', 0.1, 'linear')

			doTweenColor('bac78k', 'deadback1', 'A100FF', 0.1, 'linear')
			doTweenColor('13b2', 'deadback21', 'A100FF', 0.1, 'linear')
			doTweenColor('bac78k2', 'deadback3', 'A100FF', 0.1, 'linear')
			doTweenColor('13b22', 'deadback2', 'A100FF', 0.1, 'linear')

		triggerEvent('Add Camera Zoom', '0.005', '0.005')

        health = getProperty('health')
        if getProperty('health') > 0.03 then
            setProperty('health', health- 0.015);
        end
end
end

function onTweenCompleted(tag)
if tag == 'back' then
	doTweenColor('back2', 'deadback1', 'FFFFFF', 0.3, 'linear')
	doTweenColor('back22', 'deadback21', 'FFFFFF', 0.3, 'linear')
	doTweenColor('back3', 'deadback3', 'FFFFFF', 0.3, 'linear')
	doTweenColor('back33', 'deadback2', 'FFFFFF', 0.3, 'linear')
end
end