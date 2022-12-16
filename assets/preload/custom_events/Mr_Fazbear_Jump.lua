--by letter D
function onCreatePost()
	precacheSound('sound_dead')
        makeAnimatedLuaSprite('fi','Determinatedland/mechanic stuff/jumpscaremrfaz', -200 , -200);
        addAnimationByPrefix('fi','fi','mrfazappear',24,false);
        addAnimationByPrefix('fi','fi2','mrfazbyebye',24,false);
        scaleObject('fi', 1.5, 1.5);
		setProperty('fi.alpha', 0)
		setObjectCamera('fi', 'other')
        addLuaSprite('fi', true);

end
function onEvent(n,v1,v2)
	if n == 'Mr_Fazbear_Jump' then
		doTweenAlpha('hi', 'fi', 1, 0.1, 'quadInOut');
		playSound('sound_dead', 1);
objectPlayAnimation('fi', 'fi', true)
runTimer('bye', 0.6)
end
end


function onTimerCompleted(tag)
if tag == 'bye' then
objectPlayAnimation('fi', 'fi2', true)
runTimer('bye2', 0.2)
elseif tag == 'bye' then
		doTweenAlpha('hi', 'fi', 0, 0.1, 'quadInOut');
end
end