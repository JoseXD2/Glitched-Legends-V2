default = 0.6--put the default zoom (you can find the default zoom in stage.json)

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

