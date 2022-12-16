local allowCountdown = false




function onCreate()
	precacheSound('starting sound')
        makeAnimatedLuaSprite('lol','theater/OSWALDINTRO', -3,0);
        addAnimationByPrefix('lol','idle','screen',29,false);
    scaleObject('lol', 2.3, 2.3)
	setObjectCamera('lol', 'other')
	addLuaSprite('lol', true)

runTimer('cool',15)
runTimer('cool2',0.2)
end

function onStartCountdown()
	if not allowCountdown then
		return Function_Stop
	end
	if allowCountdown then
		return Function_Continue
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'cool2' then 
		playSound('starting sound');
elseif tag == 'cool' then 

setProperty('lol.alpha', 0)
		allowCountdown = true
		startCountdown();

end
	end

