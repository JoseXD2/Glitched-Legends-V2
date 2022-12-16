--the original code is not by me, and unfortunately i don't really know how made it, i just found it an a random mods folder that i have, but i did modified some parts of the code, and i fixed some small bugs here and there.
limit = 100

local i = 1
function onCreate()
--this is just to show the mouse thing

    for i = 1,20 do
--this all just to load the images and not lagging the game 
        makeAnimatedLuaSprite('popups'..i, 'Determinatedland/mechanic stuff/windowseyes', getRandomInt(0, 700), getRandomInt(0, 550))
        addAnimationByPrefix('popups'..i, 'idle', 'windows02idle', 24, true);
        addAnimationByPrefix('popups'..i, 'appers', 'windows01entry', 24, false);
        addAnimationByPrefix('popups'..i, 'bye', 'windows03byebye', 24, false);
        scaleObject('popups'..i, nil, nil)
        setProperty('popups'..i..'.antialiasing', false);
        addLuaSprite('popups'..i, false)
        setObjectCamera('popups'..i, 'other')
        objectPlayAnimation('popups', 'appers') 

    end
end
function onEvent(name, v1, v2)
if name == 'PopupNormal' then

            for j = 1,getRandomInt(v1, v2) do
                if i == limit then
                    i = 1
                end
                makeAnimatedLuaSprite('popups'..i, 'Determinatedland/mechanic stuff/windowseyes', getRandomInt(0, 900), getRandomInt(0, 550))

        addAnimationByPrefix('popups'..i, 'idle', 'windows02idle', 24, true);
        addAnimationByPrefix('popups'..i, 'appers', 'windows01entry', 24, false);
        addAnimationByPrefix('popups'..i, 'bye', 'windows03byebye', 24, false);
                scaleObject('popups'..i, 0.7, 0.7)
                setProperty('popups'..i..'.antialiasing', false);
                addLuaSprite('popups'..i, false)
                setObjectCamera('popups'..i, 'other')
                objectPlayAnimation('popups', 'appers') 
--this is just to play the idle animation 
        runTimer('iddd'..i, .5)
                runTimer('endd'..i, 1)
                i = i + 1
            end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
    for i = 1, 100 do     
        if tag == 'endd'..i then
    runTimer('endd2'..i, 0.1)
    objectPlayAnimation('popups'..i, 'bye', false) 
        elseif tag == 'iddd'..i then
    objectPlayAnimation('popups', 'idle') 
        elseif tag == 'endd2'..i then
    setProperty('popups'..i..'.visible', false);
        end
    end
end
