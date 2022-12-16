
function onUpdate(elapsed)
	if dadName == 'bill_pibby' then
		songPos = getSongPosition()
  
		local currentBeat = (songPos/1000)*(bpm/80)
                doTweenY(dadTweenY, 'dad', -100-300*math.sin((currentBeat*0.5)*math.pi),0.01)
                doTweenX('dad', 'dad', 900-450*math.sin((currentBeat*0.2)*math.pi),0.01)
if not downscroll then
        if getProperty('health') > 0.2 then

                doTweenY('icon', 'iconP2', 550-20*math.sin((currentBeat*0.5)*math.pi),0.01)

end
        if getProperty('health') < 0.4 then
            doTweenY('icon1', 'iconP2', 530-getRandomInt(10, 30)*math.sin((currentBeat*0.3)*math.pi),0.01)


end
        if getProperty('health') > 1.7 then
            doTweenY('icon1', 'iconP2', 590-getRandomInt(10, 40)*math.sin((currentBeat*0.3)*math.pi),0.01)


end
end
if downscroll then
        if getProperty('health') > 0.2 then

                doTweenY('icon', 'iconP2', 0-20*math.sin((currentBeat*0.5)*math.pi),0.01)

end
        if getProperty('health') < 0.4 then
            doTweenY('icon1', 'iconP2', 20-getRandomInt(10, 30)*math.sin((currentBeat*0.3)*math.pi),0.01)


end
        if getProperty('health') > 1.7 then
            doTweenY('icon1', 'iconP2', 50-getRandomInt(10, 40)*math.sin((currentBeat*0.3)*math.pi),0.01)


end
end

	  end
        end

