function onStepHit()
    if curStep == 44 then	
			screenCenter('introshit'..(pausecurcountdown+1), 'xy')
			doTweenAlpha('leintro'..pausecurcountdown,'introshit'..(pausecurcountdown+1), 0 , fuckcrochetallmyhomiesusemeth)
			if isPixelStage then 
				playSound('intro'..(pausecurcountdown)..'-pixel', getPropertyFromClass('flixel.FlxG', 'save.data.volume'))
			else
				playSound('intro'..(pausecurcountdown), getPropertyFromClass('flixel.FlxG', 'save.data.volume'))
			end
		end
				
		if pausecurcountdown == 4 then			
			for intro = 1, 3 do
				setProperty('introshit'..intro..'.x' , 6900)
				setProperty('introshit'..intro..'.alpha' , 1)
			end
		end
		
		if pausecurcountdown == 0 then	
			if isPixelStage then 
				playSound('introGo-pixel', getPropertyFromClass('flixel.FlxG', 'save.data.volume'))
			else
				playSound('introGo', getPropertyFromClass('flixel.FlxG', 'save.data.volume'))
			end
			stoprightthereyoucriminalscum = false
			setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1) --this is really dumb, for some reason using the save volume just fucks it up--
			setProperty('vocals.volume', getPropertyFromClass('flixel.FlxG', 'save.data.volume'))
			screenCenter('introshit1', 'xy')
			doTweenAlpha('GO','introshit1', 0 , fuckcrochetallmyhomiesusemeth)
		end
			if pausecurcountdown ~= 0 then	
		runTimer('pausecountdown', fuckcrochetallmyhomiesusemeth)
			pausecurcountdown = pausecurcountdown - 1
		end
	end