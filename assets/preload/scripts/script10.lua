--redthing x: 770
--marcospause x: 40
--resume x: 700
--restart x: 710
--exit x: 635
--quit x: 755
--pointer x: getProperty('h2.x') + 80
local tweentime = 0.3
function onPause()
	return Function_Stop;
end
function onCreate()
	dontappearplease = false
	tinocoPaused = false
	resume = false
	restart = false
	exit = false
	quit = false
	pausenumber = math.random(1, 7)
	addVCREffect('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg', 1, 0.1, 0.2)
	precacheSound('tea-time')
	precacheSound('pause')
	precacheSound('unpause')
	precacheSound('scroll')
	makeLuaSprite('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg', nil, 0, 0)
	makeGraphic('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg', screenWidth, screenHeight, '3b062e')
	setProperty('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg.alpha', 0.4)
	setObjectCamera('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg', 'other')
	setProperty('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg.visible', false)
	addLuaSprite('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg')
	makeLuaSprite('xd', nil, 0, 0)
	makeGraphic('xd', screenWidth, screenHeight / 6, '000000')
	setObjectCamera('xd', 'other')
	setProperty('xd.visible', false)
	addLuaSprite('xd')
	makeLuaSprite('rollordie', nil, 1000, 0)
	makeGraphic('rollordie', screenWidth / 2 + 30, screenHeight, '210e1f')
	setObjectCamera('rollordie', 'other')
	setProperty('rollordie.visible', false)
	addLuaSprite('rollordie')
	makeLuaText('h', 'PAUSED', 600, 30, -10)
	setObjectCamera('h', 'other')
	setTextSize('h', 89)
	setProperty('h.visible', false)
	addLuaText('h')
	setTextFont('h', 'glitch.ttf')
	makeLuaSprite('funnylittleguy', 'pause/logomini', 495, 0)
	scaleObject('funnylittleguy', 0.5, 0.5)
	setObjectCamera('funnylittleguy', 'other')
	setProperty('funnylittleguy.visible', false)
	addLuaSprite('funnylittleguy')
	makeLuaText('h2', 'RESUME', 600, 1200, 125)
	setObjectCamera('h2', 'other')
	setTextSize('h2', 80)
	setProperty('h2.visible', false)
	addLuaText('h2')
	setTextFont('h2', 'glitch.ttf')
	makeLuaText('h3', 'RESTART', 600, 1200, 235)
	setObjectCamera('h3', 'other')
	setTextSize('h3', 80)
	setProperty('h3.visible', false)
	addLuaText('h3')
	setTextFont('h3', 'glitch.ttf')
	makeLuaText('h4', 'EXIT', 600, 1200, 345)
	setObjectCamera('h4', 'other')
	setTextSize('h4', 80)
	setProperty('h4.visible', false)
	addLuaText('h4')
	setTextFont('h4', 'glitch.ttf')
	makeLuaText('h5', 'QUIT GAME', 600, 1200, 455)
	setObjectCamera('h5', 'other')
	setTextSize('h5', 80)
	setProperty('h5.visible', false)
	addLuaText('h5')
	setTextFont('h5', 'glitch.ttf')
	makeLuaSprite('pointydoingy', 'pause/markpoint', 1000, 160)
	setObjectCamera('pointydoingy', 'other')
	setProperty('pointydoingy.visible', false)
	addLuaSprite('pointydoingy')
end
function onGameOver()
	dontappearplease = true
end
function onGameOverConfirm(retry)
	dontappearplease = true
end
function onUpdatePost()
	if dontappearplease == true then
		setProperty('marcospause.visible', false)
	end
end
function onUpdate()
	if tinocoPaused == true then
		setProperty('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg.visible', true)
		setProperty('xd.visible', true)
		setProperty('rollordie.visible', true)
		setProperty('h.visible', true)
		setProperty('funnylittleguy.visible', true)
		setProperty('h2.visible', true)
		setProperty('h3.visible', true)
		setProperty('h4.visible', true)
		setProperty('h5.visible', true)
		setProperty('pointydoingy.visible', true)
		doTweenX('tween1', 'rollordie', 770, tweentime, 'linear')
		doTweenX('tween2', 'marcospause', 40, tweentime, 'linear')
		doTweenX('tween3', 'h2', 700, tweentime, 'linear')
		doTweenX('tween4', 'h3', 710, tweentime, 'linear')
		doTweenX('tween5', 'h4', 635, tweentime, 'linear')
		doTweenX('tween6', 'h5', 755, tweentime, 'linear')
		doTweenX('tween7', 'pointydoingy', 755, tweentime, 'linear')
		setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition')-16) -- it is counted by milliseconds, 1000 = 1 second
		setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
		setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
	else
		setProperty('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg.visible', false)
		setProperty('xd.visible', false)
		setProperty('rollordie.visible', false)
		setProperty('marcospause.visible', false)
		setProperty('h.visible', false)
		setProperty('funnylittleguy.visible', false)
		setProperty('h2.visible', false)
		setProperty('h3.visible', false)
		setProperty('h4.visible', false)
		setProperty('h5.visible', false)
		setProperty('pointydoingy.visible', false)
		doTweenX('tween1', 'rollordie', 1000, tweentime, 'linear')
		doTweenX('tween2', 'marcospause', -40, tweentime, 'linear')
		doTweenX('tween3', 'h2', 1200, tweentime, 'linear')
		doTweenX('tween4', 'h3', 1200, tweentime, 'linear')
		doTweenX('tween5', 'h4', 1200, tweentime, 'linear')
		doTweenX('tween6', 'h5', 1200, tweentime, 'linear')
		doTweenX('tween7', 'pointydoingy', 1000, tweentime, 'linear')
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
		setProperty('vocals.volume', 1)		
	end
	if resume == true then
		setProperty('pointydoingy.y', 160)
	elseif restart == true then
		setProperty('pointydoingy.y', 270)
	elseif exit == true then
		setProperty('pointydoingy.y', 380)
	elseif quit == true then
		setProperty('pointydoingy.y', 490)
	end
	ILOVEBUTTONS()
end
function ILOVEBUTTONS()
	if keyJustPressed('pause') then
		if tinocoPaused == false then
			pausenumber = math.random(1, 7)
			makeLuaSprite('marcospause', 'pause/glitchypause/glitchedpause' .. pausenumber, -40, 150)
			setObjectCamera('marcospause', 'other')
			addLuaSprite('marcospause')
			playSound('pause')
			tinocoPaused = true
			resume = true
			restart = false
			exit = false
			quit = false
		elseif tinocoPaused == true and resume == true then
			removeLuaSprite('marcospause', true)
			playSound('unpause')
			tinocoPaused = false
			resume = false
			restart = false
			exit = false
			quit = false
		elseif tinocoPaused == true and restart == true then
			restartSong(false);
		elseif tinocoPaused == true and exit == true then
			exitSong(false);
		elseif tinocoPaused == true and quit == true then
			os.exit();
		end
	end
	if keyJustPressed('up') and tinocoPaused == true then
		playSound('scroll')
		if resume == true then
			resume = false
			restart = false
			exit = false
			quit = true
		elseif quit == true then
			resume = false
			restart = false
			exit = true
			quit = false
		elseif exit == true then
			resume = false
			restart = true
			exit = false
			quit = false
		elseif restart == true then
			resume = true
			restart = false
			exit = false
			quit = false
		end
	end
	if keyJustPressed('down')  and tinocoPaused == true then
		playSound('scroll')
		if resume == true then
			resume = false
			restart = true
			exit = false
			quit = false
		elseif restart == true then
			resume = false
			restart = false
			exit = true
			quit = false
		elseif exit == true then
			resume = false
			restart = false
			exit = false
			quit = true
		elseif quit == true then
			resume = true
			restart = false
			exit = false
			quit = false
		end
	end
end