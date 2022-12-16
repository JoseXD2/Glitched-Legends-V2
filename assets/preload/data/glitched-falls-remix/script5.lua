default = 0.3--put the default zoom (you can find the default zoom in stage.json)

defaulttime = 0.5--how much time do you want to order to switch to the default zoom

zoomin = 1--this zoom will trigger as soon the camera switch between bf and dad

zoomintime = 0.5--how much time do you want to order to zoom when the camera switch between bf and dad
--by letter.

function onUpdate()
    if mustHitSection == false then
		doTweenZoom('gameZp2', 'camGame', zoomin, zoomintime, 'quadInOut');

	end
    if mustHitSection == true then
		doTweenZoom('gameZp1', 'camGame', zoomin, zoomintime, 'quadInOut');

end
end

function onTweenCompleted(tag) 
	if tag == 'gameZp2' then
		doTweenZoom('gameZp22', 'camGame', default, defaulttime, 'quadInOut');
		setProperty('defaultCamZoom', default);
	elseif tag == 'gameZp1' then
		doTweenZoom('gameZp11', 'camGame', default, defaulttime, 'quadInOut');
		setProperty('defaultCamZoom', default);

    end
end

function onUpdatePost()
if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singRIGHT' then

		setProperty('animatedicon.alpha', 1)
		setProperty('animatediconm.alpha', 0)


end
if getProperty('gf.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
		setProperty('animatedicon.alpha', 0)
		setProperty('animatediconm.alpha', 1)

end
end