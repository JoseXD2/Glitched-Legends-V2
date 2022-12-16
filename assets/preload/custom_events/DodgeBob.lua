--script by letter D
local hit = false
local can = false


function onEvent(name, value1, value2)

if name == 'DodgeBob' then


  objectPlayAnimation('bar', '1', false)


doTweenAlpha('10', 'bar', 1, 0.01, 'linear')
doTweenAlpha('20', 'bar2', 1, 0.01, 'linear')
doTweenAlpha('30', 'bar3', 1, 0.01, 'linear')
doTweenAlpha('40', 'bar4', 1, 0.01, 'linear')


doTweenX('22', 'bar2.scale', 1, 0.2, 'linear')
doTweenY('21', 'bar2.scale', 1, 0.2, 'linear')
doTweenX('32', 'bar3.scale', 1, 0.2, 'linear')
doTweenY('31', 'bar3.scale', 1, 0.2, 'linear')
doTweenX('42', 'bar4.scale', 1, 0.2, 'linear')
doTweenY('41', 'bar4.scale', 1, 0.2, 'linear')


runTimer('gg', 0.6)
runTimer('gg2', 0.2)
runTimer('gg4', 1.2)
runTimer('gg5', 1.9)
runTimer('gg6', 1.7)


end
end

function onCreatePost()
        makeAnimatedLuaSprite('krab','bk/mechanic stuff/krabby', getProperty('dad.x') + 500, getProperty('dad.y') + 400);
        addAnimationByPrefix('krab','krabgo','krabby patty',24,true);
        scaleObject('krab', 0.7, 0.7);
       setProperty('krab.alpha', 0);
        addLuaSprite('krab', true);

        makeAnimatedLuaSprite('bfh','bf_hurt', getProperty('boyfriend.x') - 80, getProperty('boyfriend.y') + 330);
        addAnimationByPrefix('bfh','doh','bf_hurt',24,false);
        scaleObject('bfh', 1, 1);
       setProperty('bfh.alpha', 0);
        addLuaSprite('bfh', false);

        makeAnimatedLuaSprite('bfd','bf_dodge', getProperty('boyfriend.x') - 280, getProperty('boyfriend.y') + 350);
        addAnimationByPrefix('bfd','dod','bf_dodge_01 instancia 1',24,false);
        scaleObject('bfd', 1, 1);
       setProperty('bfd.alpha', 0);
        addLuaSprite('bfd', false);

        makeAnimatedLuaSprite('boba','bk/mechanic stuff/bob_attack', getProperty('dad.x'), getProperty('dad.y'));
        addAnimationByPrefix('boba','bobo','spongebob_attack',24,false);
        scaleObject('boba', 1, 1);
       setProperty('boba.alpha', 0);
        addLuaSprite('boba', false);


        makeAnimatedLuaSprite('bar','bk/mechanic stuff/specialbar', 350, 50);
        addAnimationByPrefix('bar','1','barentry',24,false);
        addAnimationByPrefix('bar','2','barbyebye',24,false);
        scaleObject('bar', 2, 1);
    setObjectCamera('bar','other')
       setProperty('bar.alpha', 0);
        addLuaSprite('bar', false);


    makeLuaSprite('bar2', 'bk/mechanic stuff/mark1', getProperty('bar.x') - 220, getProperty('bar.y') + 330)
    setObjectCamera('bar2','other')
    setProperty('bar2.alpha', 0)
        scaleObject('bar2', 4, 0);
    addLuaSprite('bar2',true)


    makeLuaSprite('bar3', 'bk/mechanic stuff/mark2', getProperty('bar2.x'), getProperty('bar2.y'))
    setObjectCamera('bar3','other')
doTweenColor('hhjuh', 'bar3', '006051', 0.0001, 'linear')
    setProperty('bar3.alpha', 0)
        scaleObject('bar3', 4, 0);
    addLuaSprite('bar3',true)


    makeLuaSprite('bar4', 'bk/mechanic stuff/markalt2', getProperty('bar.x') - 450, getProperty('bar.y'))
    setObjectCamera('bar4','other')
doTweenColor('hh', 'bar4', '006051', 0.0001, 'linear')
    setProperty('bar4.alpha', 0)
        scaleObject('bar4', 4, 0);
    addLuaSprite('bar4',true)
end

function onUpdate(elapsed)
	if can == true and keyJustPressed('left') then
hit = true
doTweenColor('gw', 'bar4', '80FF00', 0.00001, 'linear')

end
end


function onTweenCompleted(tag)
if tag == 'g' and hit == false then 
doTweenY('gd', 'bar4', 100, 0.2, 'linear')
setProperty('health', getProperty('health') - 0.7)
objectPlayAnimation('bar', '2', false)



hit = false

doTweenX('d1', 'bar2.scale', 4, 0.05, 'linear')
doTweenY('d2', 'bar2.scale', 2, 0.1, 'linear')
doTweenX('d3', 'bar3.scale', 4, 0.05, 'linear')
doTweenY('d4', 'bar3.scale', 2, 0.1, 'linear')
doTweenX('d5', 'bar4.scale', 4, 0.05, 'linear')
doTweenY('d6', 'bar4.scale', 2, 0.1, 'linear')
elseif tag == 'g' and hit == true then 
doTweenY('gd', 'bar4', 100, 0.2, 'linear')
doTweenColor('hh', 'bar4', '006051', 0.0001, 'linear')
objectPlayAnimation('bar', '2', false)



hit = false

doTweenX('d1', 'bar2.scale', 4, 0.05, 'linear')
doTweenY('d2', 'bar2.scale', 2, 0.1, 'linear')
doTweenX('d3', 'bar3.scale', 4, 0.05, 'linear')
doTweenY('d4', 'bar3.scale', 2, 0.1, 'linear')
doTweenX('d5', 'bar4.scale', 4, 0.05, 'linear')
doTweenY('d6', 'bar4.scale', 2, 0.1, 'linear')

elseif tag == 'd2' then 

doTweenY('d7', 'bar2.scale', 0, 0.2, 'linear')
doTweenY('d8', 'bar3.scale', 0, 0.2, 'linear')
doTweenY('d9', 'bar4.scale', 0, 0.2, 'linear')



doTweenAlpha('60', 'bar2', 0, 0.2, 'linear')
doTweenAlpha('70', 'bar3', 0, 0.2, 'linear')
doTweenAlpha('80', 'bar4', 0, 0.2, 'linear')
runTimer('gg3', 0.2)

end
end
function onTimerCompleted(tag)
if tag == 'gg' then
can = true
runTimer('ggoff', 0.2)
elseif tag == 'ggoff' then
can = false
elseif tag == 'gg2' then
doTweenY('g', 'bar4', 600, 1, 'linear')
elseif tag == 'gg3' then
doTweenAlpha('50', 'bar', 0, 0.05, 'linear')

elseif tag == 'gg4' and hit == true then
doTweenColor('h09h', 'bar4', '006051', 0.0001, 'linear')
setProperty('dad.alpha', 0)
setProperty('boba.alpha', 1)
objectPlayAnimation('boba', 'bobo', false)

setProperty('boyfriend.alpha', 0)
objectPlayAnimation('bfd', 'dod', false)
doTweenX('sheesh', 'krab', 2900, 0.3, 'linear')
setProperty('krab.alpha', 1)
setProperty('bfd.alpha', 1)
playSound('pealaunch', 0.5)

elseif tag == 'gg4' and hit == false then
setProperty('dad.alpha', 0)
setProperty('boba.alpha', 1)
objectPlayAnimation('boba', 'bobo', false)
setProperty('boyfriend.alpha', 0)
objectPlayAnimation('bfh', 'doh', false)
doTweenX('sheesh', 'krab', 2900, 0.3, 'linear')
	cameraShake('camGame', 0.01, 0.1)
	cameraShake('camHud', 0.01, 0.3)
setProperty('krab.alpha', 1)
setProperty('bfh.alpha', 1)
playSound('pealaunch', 0.5)
elseif tag == 'gg5' then
setProperty('dad.alpha', 1)
setProperty('boba.alpha', 0)
setProperty('boyfriend.alpha', 1)
doTweenX('sheesh2', 'krab', 100, 0.1, 'linear')
setProperty('krab.alpha', 0)
setProperty('bfd.alpha', 0)
setProperty('bfh.alpha', 0)




end
end