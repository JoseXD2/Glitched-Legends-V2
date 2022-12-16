--the original code is not by me, and unfortunately i don't really know how made it, i just found it an a random mods folder that i have, but i did modified some parts of the code, and i fixed some small bugs here and there.
limit = 100
local can = true
local i = 1
function onCreate()
--this is just to show the mouse thing
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);

    for i = 1,20 do
--this all just to load the images and not lagging the game 
        makeAnimatedLuaSprite('Ss'..i, 'Determinatedland/secretpop', getRandomInt(0, 700), getRandomInt(0, 300))
        addAnimationByPrefix('Ss'..i, 'idle', 'hi', 24, true);
        addAnimationByPrefix('Ss'..i, 'appers', 'appear', 24, false);
        addAnimationByPrefix('Ss'..i, 'bye', 'byebye', 94, false);
        scaleObject('Ss'..i, nil, nil)
        addLuaSprite('Ss'..i, false)
        setObjectCamera('Ss'..i, 'other')
        objectPlayAnimation('Ss', 'appers') 
        runTimer('iddd'..i, .5)


        makeLuaSprite('hitBox'..i, 'hitBox', getProperty('Ss'..i..'.x') + nil, getProperty('Ss'..i..'.y') + nil)
        setObjectCamera('hitBox'..i, 'other')
        scaleObject('hitBox'..i, nil, nil)
        addLuaSprite('hitBox'..i, true)
        setProperty('hitBox'..i..'.alpha', 0.0)
    end
end
function onBeatHit()
if curBeat == 1 then

            for j = 1,1 do
                if i == limit then
                    i = 1
                end
                makeAnimatedLuaSprite('Ss'..i, 'Determinatedland/secretpop', getRandomInt(0, 900), getRandomInt(0, 300))
                addAnimationByPrefix('Ss'..i, 'idle', 'hi', 24, true);
                addAnimationByPrefix('Ss'..i, 'bye', 'byebye', 96, false);
                addAnimationByPrefix('Ss'..i, 'appers', 'appear', 95, false);
                scaleObject('Ss'..i, 1, 1)

                addLuaSprite('Ss'..i, false)
                setObjectCamera('Ss'..i, 'other')
                objectPlayAnimation('Ss', 'appers') 
                runTimer('tt'..i, 5)
--this is just to play the idle animation 
        runTimer('iddd'..i, .5)



                makeLuaSprite('hitBox'..i, 'hitBox', getProperty('Ss'..i..'.x') + 165, getProperty('Ss'..i..'.y') + 130)
                setObjectCamera('hitBox'..i, 'other')
                scaleObject('hitBox'..i, 0.9, 0.7)
                addLuaSprite('hitBox'..i, true)
            setProperty('hitBox'..i..'.alpha', 0);
                i = i + 1
            end
end
end


function onUpdate(elapsed)
--this is the fun stuff (:
    setProperty('mouse.x', getMouseX('other'))
    setProperty('mouse.y', getMouseY('other'))
    if mouseReleased() then
        for i = 1, 100 do 
            if getMouseX('other') > getProperty('hitBox'..i..'.x') and getMouseY('other') > getProperty('hitBox'..i..'.y') and getMouseX('other') < getProperty('hitBox'..i..'.x') + getProperty('hitBox'..i..'.width') and getMouseY('other') < getProperty('hitBox'..i..'.y') + getProperty('hitBox'..i..'.height') and mouseReleased() then
                objectPlayAnimation('Ss'..i, 'bye') 
                runTimer('endd'..i, .1)
                runTimer('endd2'..i, .3)
            end
        end
    end
    
end

function onTimerCompleted(tag, loops, loopsLeft)
    for i = 1, 100 do     
        if tag == 'endd'..i then
            setProperty('Ss'..i..'.visible', false);
            setProperty('hitBox'..i..'.alpha', 0);
        elseif tag == 'endd2'..i and can == true then
        objectPlayAnimation('Ss', 'bye') 
loadSong('Dreams-come-true', hard);
        elseif tag == 'iddd'..i then
        objectPlayAnimation('Ss', 'idle') 

        elseif tag == 'tt'..i then
        objectPlayAnimation('Ss', 'bye') 
runTimer ('tt2'..i, 0.1)
        elseif tag == 'tt2'..i then
can = false
    setProperty('Ss'..i..'.visible', false);
    setProperty('hitBox'..i..'.alpha', 0);
        end
    end
end