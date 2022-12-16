local xx = 460;
local yy = 600;
local xx2 = 1220;
local yy2 = 650;
local ofs = 60;
local followchars = 0;
local angery = false


function onCreatePost()
turn = 0

doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedic3k3kon', 'uglyHB', 0, 0.0000001, 'linear')
	   makeLuaSprite('did2', '', -900, -900);
        makeGraphic('did2',5000,5000,'FFFFFF')
    setProperty('did2.alpha', 0)
	      addLuaSprite('did2', false);


	   makeLuaSprite('d1', 'vignette2', 0, 0);
              setObjectCamera('d1', 'other')
    setProperty('d1.alpha', 1)
	      addLuaSprite('d1', false);


setProperty('sponghouseaniamted.alpha', 0)

doTweenColor('ww', 'dad', '000000', 0.1, 'linear')
doTweenColor('wwi', 'boyfriend', '000000', 0.1, 'linear')
doTweenColor('wwp', 'pibby', '000000', 0.1, 'linear')
doTweenColor('wwip', 'sponghouseaniamted3', '000000', 0.1, 'linear')
	   makeLuaSprite('did1', '', -900, -900);
        makeGraphic('did1',5000,5000,'000000')
    setProperty('did1.alpha', 0.9)
	      addLuaSprite('did1', false);
end

function onStepHit()
if curStep == 272 then
	doTweenZoom('gamezoom', 'camGame', 2, 20, 'linear');
		setProperty('defaultCamZoom', 2);
end
    if curStep == 381 then

doTweenAlpha('healthB8ar', 'healthBar', 1, 0.001, 'linear')
doTweenAlpha('tim1eTxt', 'timeTxt', 1, 0.0000001, 'linear')
doTweenAlpha('time9Bar', 'timeBar', 1, 0.00001, 'linear')
doTweenAlpha('timeB1arBG', 'timeBarBG', 1, 0.0000001, 'linear')
doTweenAlpha('score3Txt', 'scoreTxt', 1, 0.000001, 'linear')
doTweenAlpha('animatwedbficon', 'animatedbficon', 1, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 1, 0.0000001, 'linear')
doTweenAlpha('animatedic3k3kon', 'uglyHB', 1, 0.0000001, 'linear')
end
if curStep == 384 then

doTweenColor('ww', 'dad', 'ffffff', 0.1, 'linear')
doTweenColor('wwi', 'boyfriend', 'ffffff', 0.1, 'linear')
doTweenColor('wwp', 'pibby', 'ffffff', 0.1, 'linear')
doTweenColor('wwip', 'sponghouseaniamted3', 'ffffff', 0.1, 'linear')
setProperty('d1.alpha', 0)
setProperty('did1.alpha', 0)
setProperty('sponghouseaniamted.alpha', 1)
	doTweenZoom('gamezoom', 'camGame', 0.8, 0.1, 'linear');
		setProperty('defaultCamZoom', 0.8);
end
if curStep == 615 then
		cameraFlash('game', '0xFFFFFF', 2, true)
	doTweenZoom('gamezoom', 'camGame', 0.4, 0.5, 'linear');
		setProperty('defaultCamZoom', 0.4);
setProperty('did1.alpha', 1)
setProperty('sponghouseaniamted.alpha', 0)
followchars = 1
end
if curStep == 715 then
		cameraFlash('game', '0xFFFFFF', 1, true)
	doTweenZoom('gamezoom', 'camGame', 0.8, 0.1, 'linear');
		setProperty('defaultCamZoom', 0.8);
    setProperty('did2.alpha', 1)
    setProperty('did1.alpha', 0)
turn = 1
followchars = 0
end
if curStep == 812 then
    setProperty('did2.alpha', 0)
    setProperty('did.alpha', 1)
setProperty('sponghouseaniamted.alpha', 1)
doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedic3k3kon', 'uglyHB', 0, 0.0000001, 'linear')
end
if curStep == 820 then
    setProperty('did.alpha', 0)
    setProperty('did2.alpha', 0)
    setProperty('did1.alpha', 0)
doTweenAlpha('healthB8ar', 'healthBar', 1, 0.001, 'linear')
doTweenAlpha('tim1eTxt', 'timeTxt', 1, 0.0000001, 'linear')
doTweenAlpha('time9Bar', 'timeBar', 1, 0.00001, 'linear')
doTweenAlpha('timeB1arBG', 'timeBarBG', 1, 0.0000001, 'linear')
doTweenAlpha('score3Txt', 'scoreTxt', 1, 0.000001, 'linear')
doTweenAlpha('animatwedbficon', 'animatedbficon', 1, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 1, 0.0000001, 'linear')
doTweenAlpha('animatedic3k3kon', 'uglyHB', 1, 0.0000001, 'linear')
turn = 0
end

if curStep == 1013 then
		cameraFlash('game', '0xFFFFFF', 2, true)
	doTweenZoom('gamezoom', 'camGame', 0.4, 0.5, 'linear');
		setProperty('defaultCamZoom', 0.4);
setProperty('did1.alpha', 1)
setProperty('sponghouseaniamted.alpha', 0)
followchars = 1
end
if curStep == 1107 then

    setProperty('did2.alpha', 0)
    setProperty('did.alpha', 1)
setProperty('sponghouseaniamted.alpha', 0)
doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedic3k3kon', 'uglyHB', 0, 0.0000001, 'linear')
end

if curStep == 1114 then
		cameraFlash('hud', '0x000000', 5, true)
	doTweenZoom('gamezoom', 'camGame', 0.8, 0.1, 'linear');
		setProperty('defaultCamZoom', 0.8);
    setProperty('did.alpha', 0)

angery = true
followchars = 0
end
if curStep == 1168 then
		cameraFlash('game', '0xFFFFFF', 1, true)
	doTweenZoom('gamezoom', 'camGame', 0.8, 0.1, 'linear');
		setProperty('defaultCamZoom', 0.8);
    setProperty('did2.alpha', 1)
    setProperty('did1.alpha', 0)

turn = 1
end

if curStep == 1296 then
turn = 0

doTweenAlpha('healthB8ar', 'healthBar', 1, 0.001, 'linear')
doTweenAlpha('tim1eTxt', 'timeTxt', 1, 0.0000001, 'linear')
doTweenAlpha('time9Bar', 'timeBar', 1, 0.00001, 'linear')
doTweenAlpha('timeB1arBG', 'timeBarBG', 1, 0.0000001, 'linear')
doTweenAlpha('score3Txt', 'scoreTxt', 1, 0.000001, 'linear')
doTweenAlpha('animatwedbficon', 'animatedbficon', 1, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 1, 0.0000001, 'linear')
doTweenAlpha('animatedic3k3kon', 'uglyHB', 1, 0.0000001, 'linear')


end

if curStep == 1332 then
		cameraFlash('game', '0x000000', 90, true)
setProperty('sponghouseaniamted.alpha', 0)
doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedic3k3kon', 'uglyHB', 0, 0.0000001, 'linear')

end
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
if angery == true then
		triggerEvent('Add Camera Zoom', '0.03', '0.03')
    if getProperty('health') > 0.4 then
        setProperty('health', getProperty('health')- 0.01);

    local luckyRoll50 = math.random(1, 50)
    local luckyRoll51 = math.random(1, 50)

        if (luckyRoll50 >= 25) then
            cameraShake('hud', 0.03, 0.03);
    end
        if (luckyRoll51 >= 25) then
            cameraShake('game', 0.03, 0.03);
end
end
end

if turn == 1 then
if direction == 0 then
doTweenColor('back', 'did2', 'C100FF', 0.001, 'linear')
doTweenColor('back1', 'healthBar', 'C100FF', 0.001, 'linear')
doTweenColor('back2', 'timeTxt', 'C100FF', 0.001, 'linear')
doTweenColor('back3', 'timeBar', 'C100FF', 0.001, 'linear')
doTweenColor('back4', 'timeBarBG', 'C100FF', 0.001, 'linear')
doTweenColor('back5', 'animatedicon', 'C100FF', 0.001, 'linear')
doTweenColor('back6', 'animatedbficon', 'C100FF', 0.001, 'linear')
doTweenColor('back7', 'uglyHB', 'C100FF', 0.001, 'linear')
doTweenColor('back8', 'boyfriend', 'C100FF', 0.001, 'linear')
doTweenColor('back9', 'dad', 'C100FF', 0.001, 'linear')
doTweenColor('back10', 'scoreTxt', 'C100FF', 0.001, 'linear')
elseif direction == 1 then
doTweenColor('back', 'did2', '0070FF', 0.001, 'linear')
doTweenColor('back1', 'healthBar', '0070FF', 0.001, 'linear')
doTweenColor('back2', 'timeTxt', '0070FF', 0.001, 'linear')
doTweenColor('back3', 'timeBar', '0070FF', 0.001, 'linear')
doTweenColor('back4', 'timeBarBG', '0070FF', 0.001, 'linear')
doTweenColor('back5', 'animatedicon', '0070FF', 0.001, 'linear')
doTweenColor('back6', 'animatedbficon', '0070FF', 0.001, 'linear')
doTweenColor('back7', 'uglyHB', '0070FF', 0.001, 'linear')
doTweenColor('back8', 'boyfriend', '0070FF', 0.001, 'linear')
doTweenColor('back9', 'dad', '0070FF', 0.001, 'linear')
doTweenColor('back10', 'scoreTxt', '0070FF', 0.001, 'linear')
elseif direction == 2 then
doTweenColor('back', 'did2', '7DFF00', 0.001, 'linear')
doTweenColor('back1', 'healthBar', '7DFF00', 0.001, 'linear')
doTweenColor('back2', 'timeTxt', '7DFF00', 0.001, 'linear')
doTweenColor('back3', 'timeBar', '7DFF00', 0.001, 'linear')
doTweenColor('back4', 'timeBarBG', '7DFF00', 0.001, 'linear')
doTweenColor('back5', 'animatedicon', '7DFF00', 0.001, 'linear')
doTweenColor('back6', 'animatedbficon', '7DFF00', 0.001, 'linear')
doTweenColor('back7', 'uglyHB', '7DFF00', 0.001, 'linear')
doTweenColor('back8', 'boyfriend', '7DFF00', 0.001, 'linear')
doTweenColor('back9', 'dad', '7DFF00', 0.001, 'linear')
doTweenColor('back10', 'scoreTxt', '7DFF00', 0.001, 'linear')
elseif direction == 3 then
doTweenColor('back', 'did2', 'FF0015', 0.001, 'linear')
doTweenColor('back1', 'healthBar', 'FF0015', 0.001, 'linear')
doTweenColor('back2', 'timeTxt', 'FF0015', 0.001, 'linear')
doTweenColor('back3', 'timeBar', 'FF0015', 0.001, 'linear')
doTweenColor('back4', 'timeBarBG', 'FF0015', 0.001, 'linear')
doTweenColor('back5', 'animatedicon', 'FF0015', 0.001, 'linear')
doTweenColor('back6', 'animatedbficon', 'FF0015', 0.001, 'linear')
doTweenColor('back7', 'uglyHB', 'FF0015', 0.001, 'linear')
doTweenColor('back8', 'boyfriend', 'FF0015', 0.001, 'linear')
doTweenColor('back9', 'dad', 'FF0015', 0.001, 'linear')
doTweenColor('back10', 'scoreTxt', 'FF0015', 0.001, 'linear')
end
end
end
function onTweenCompleted(tag)
if tag == 'back' then

doTweenColor('back0', 'did2', '000000', 0.5, 'linear')
doTweenColor('back1', 'healthBar', 'FFFFFF', 0.5, 'linear')
doTweenColor('back2', 'timeTxt', 'FFFFFF', 0.5, 'linear')
doTweenColor('back3', 'timeBar', 'FFFFFF', 0.5, 'linear')
doTweenColor('back4', 'timeBarBG', 'FFFFFF', 0.5, 'linear')
doTweenColor('back5', 'animatedicon', 'FFFFFF', 0.5, 'linear')
doTweenColor('back6', 'animatedbficon', 'FFFFFF', 0.5, 'linear')
doTweenColor('back7', 'uglyHB', 'FFFFFF', 0.5, 'linear')
doTweenColor('back8', 'boyfriend', 'FFFFFF', 0.5, 'linear')
doTweenColor('back9', 'dad', 'FFFFFF', 0.5, 'linear')
doTweenColor('back10', 'scoreTxt', 'FFFFFF', 0.001, 'linear')
end
end



function onUpdate()

    if followchars == 1 then
        if mustHitSection == false then

            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end