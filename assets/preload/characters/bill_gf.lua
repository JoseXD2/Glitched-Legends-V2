
function onUpdate(elapsed)
	if dadName == 'bill_gf' then

		songPos = getSongPosition()
  
		local currentBeat = (songPos/1000)*(bpm/80)
                doTweenY(dadTweenY, 'dad', -300-110*math.sin((currentBeat*0.25)*math.pi),0.001)
if not downscroll then
        if getProperty('health') > 1.6 then
                doTweenY('icon', 'iconP2', 550-0*math.sin((currentBeat*0.5)*math.pi),0.01)
else
                doTweenY('icon', 'iconP2', 550-20*math.sin((currentBeat*0.5)*math.pi),0.01)
end

   end
if downscroll then
        if getProperty('health') > 1.6 then
                doTweenY('icon', 'iconP2', 0-0*math.sin((currentBeat*0.5)*math.pi),0.01)
else
                doTweenY('icon', 'iconP2', 0-20*math.sin((currentBeat*0.5)*math.pi),0.01)
end
end
end
end