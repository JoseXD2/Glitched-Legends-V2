local originy = 0
function onCreate()

	originy = getProperty('dad.y')

end
function onUpdate(elapsed)
	if dadName == 'shadowbp' then
	  if curStep >= 0 then
  
		songPos = getSongPosition()
  
		local currentBeat = (songPos/1000)*(bpm/80)
  
		doTweenY(dadTweenY, 'dad', 100-110*math.sin((currentBeat*0.25)*math.pi),0.001)
  
	  end
	end
end