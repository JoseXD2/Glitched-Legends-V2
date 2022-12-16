--the original code is not by me, and unfortunately i don't really know how made it, i just found it an a random mods folder that i have, but i did modified some parts of the code, and i fixed some small bugs here and there.
limit = 100

local i = 1
function onCreate()
--this is just to show the mouse thing
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);

    for i = 1,20 do
--this all just to load the images and not lagging the game 
        makeAnimatedLuaSprite('popups'..i, 'doki', getRandomInt(0, 700), getRandomInt(0, 300))
        addAnimationByPrefix('popups'..i, 'idle', 'just_idle', 24, true);
        addAnimationByPrefix('popups'..i, 'appers', 'just_appear', 24, false);
        addAnimationByPrefix('popups'..i, 'bye', 'just_byebye', 94, false);
        scaleObject('popups'..i, nil, nil)
        setProperty('popups'..i..'.antialiasing', false);
        addLuaSprite('popups'..i, false)
        setObjectCamera('popups'..i, 'other')
        objectPlayAnimation('popups', 'appers') 
        runTimer('iddd'..i, .5)


        makeLuaSprite('hitBox'..i, 'hitBox', getProperty('popups'..i..'.x') + nil, getProperty('popups'..i..'.y') + nil)
        setObjectCamera('hitBox'..i, 'other')
        scaleObject('hitBox'..i, nil, nil)
        addLuaSprite('hitBox'..i, true)
        setProperty('hitBox'..i..'.alpha', 0.0)
    end
end
function onEvent(name, v1, v2)
if name == 'PopUp' then

            for j = 1,getRandomInt(v1, v2) do
                if i == limit then
                    i = 1
                end
                makeAnimatedLuaSprite('popups'..i, 'doki', getRandomInt(0, 900), getRandomInt(0, 300))
                addAnimationByPrefix('popups'..i, 'idle', 'just_idle', 24, true);
                addAnimationByPrefix('popups'..i, 'bye', 'just_byebye', 94, false);
                addAnimationByPrefix('popups'..i, 'appers', 'just_appear', 24, false);
                scaleObject('popups'..i, 1, 1)
                setProperty('popups'..i..'.antialiasing', false);
                addLuaSprite('popups'..i, false)
                setObjectCamera('popups'..i, 'other')
                objectPlayAnimation('popups', 'appers') 
--this is just to play the idle animation 
        runTimer('iddd'..i, .5)



                makeLuaSprite('hitBox'..i, 'hitBox', getProperty('popups'..i..'.x') + 165, getProperty('popups'..i..'.y') + 130)
                setObjectCamera('hitBox'..i, 'other')
                scaleObject('hitBox'..i, 0.9, 0.7)
                addLuaSprite('hitBox'..i, true)
            setProperty('hitBox'..i..'.alpha', 0);
                i = i + 1
            end
end
end

function onBeatHit()
	--this is just to popup the image every 10 beat
        if curBeat % 17 == 0 then
triggerEvent('PopUp', '1', '0')
            end
        end

function onUpdate(elapsed)
--this is the fun stuff (:
    setProperty('mouse.x', getMouseX('other'))
    setProperty('mouse.y', getMouseY('other'))
    if mouseReleased() then
        for i = 1, 100 do 
            if getMouseX('other') > getProperty('hitBox'..i..'.x') and getMouseY('other') > getProperty('hitBox'..i..'.y') and getMouseX('other') < getProperty('hitBox'..i..'.x') + getProperty('hitBox'..i..'.width') and getMouseY('other') < getProperty('hitBox'..i..'.y') + getProperty('hitBox'..i..'.height') and mouseReleased() then
                objectPlayAnimation('popups'..i, 'bye') 
                runTimer('endd'..i, .1)
            end
        end
    end
    
end

function onTimerCompleted(tag, loops, loopsLeft)
    for i = 1, 100 do     
        if tag == 'endd'..i then
            setProperty('popups'..i..'.visible', false);
            setProperty('hitBox'..i..'.alpha', 0);
        elseif tag == 'iddd'..i then
        objectPlayAnimation('popups', 'idle') 

        end
    end
end