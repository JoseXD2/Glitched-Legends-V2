local damage = false
local pos = 530
function onEvent(name, value1, value2)
	if name == 'GasterBlaster' then
	runTimer('ready', 0.1)

	end
end

function onCreate()
	precacheSound('blaster_shoot')
	makeAnimatedLuaSprite('B', 'purple/mechanic stuff/blast', -200, 580)
	addAnimationByPrefix('B', 'shoot', 'blast instancia 1', 24, false)
        scaleObject('B', 0.3, 0.3);
	setObjectCamera('B', 'other')
	setGraphicSize('B', getProperty('B.width') * 0.9, 0)
	setProperty('B.alpha', 0)
		objectPlayAnimation('GB', 'ready', false);
	addLuaSprite('B', true)


	makeAnimatedLuaSprite('GB', 'purple/mechanic stuff/gasterblaster', -200, 530)
	addAnimationByPrefix('GB', 'ready', 'gasterblasterhorizontal', 24, false)
	addAnimationByPrefix('GB', 'idle', 'gasterblasterhorizontal_idle', 24, true)
        scaleObject('GB', 0.3, 0.3);
	setObjectCamera('GB', 'other')
	setProperty('GB.alpha', 0)
		objectPlayAnimation('GB', 'idle', false);
	addLuaSprite('GB', true)

	precacheSound('blaster shoot')
	if downscroll then
		setProperty('GB.y', getProperty('GB.y') - 560);
		setProperty('B.y', getProperty('B.y') - 560);
	end
end

function onTimerCompleted(tag)

	if tag == 'ready' then

		doTweenX('itsCominB', 'B', 200, 0.5, 'quadInOut')
		doTweenX('itsCominGB', 'GB', 210, 0.5, 'quadInOut')
		doTweenAngle('itsFlipingGB0', 'GB', 360, 0.55, 'quadInOut')

		setProperty('GB.alpha', 1)
	runTimer('set', 1)


	elseif tag == 'set' then

damage = true
		cameraShake('camGame', 0.01, 0.5)
		cameraShake('camHud', 0.01, 0.5)
		objectPlayAnimation('B', 'shoot', true);

runTimer('im_really_tired', 0.2)
		setProperty('GB.alpha', 1)
		objectPlayAnimation('GB', 'ready');
		doTweenX('itsXingGB', 'GB', -300, 0.5, 'quadInOut')
		objectPlayAnimation('GB', 'ready', false);
		doTweenX('itsScaleingB', 'B.scale', 2, 1.5, 'quadInOut')
		playSound('blaster shoot', 1, 'shoot');
	runTimer('begone', 0.5)
	elseif tag == 'im_really_tired' then
		setProperty('B.alpha', 1)
	elseif tag == 'begone' then
		doTweenAlpha('itsFaidingB', 'B', 0, 0.35, 'quadInOut')
		doTweenAlpha('itsFaidingGB', 'GB', 0, 0.35, 'quadInOut')

		objectPlayAnimation('GB', 'idle', true);
		doTweenAngle('itsFlipingGB', 'GB', 0, 0.00001, 'quadInOut')
runTimer('dodo2', 1, 5)
damage = false
elseif tag == 'dodo2' then
setProperty('health', getProperty('health') - 0.05)
	end
end


function onUpdate()
setProperty('GB.y', pos)
if not downscroll then
if getProperty('GB.animation.curAnim.name') == 'idle' then
pos = 530
end
if getProperty('GB.animation.curAnim.name') == 'ready' then
pos = 490
end
end
if downscroll then
if getProperty('GB.animation.curAnim.name') == 'idle' then
pos = 0
end
if getProperty('GB.animation.curAnim.name') == 'ready' then
pos = -30
end
end
if damage == true then
setProperty('health', getProperty('health') - 0.01)
end
end

