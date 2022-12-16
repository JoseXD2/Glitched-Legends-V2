local PermitirParticulas = false


function onCreate()
		setCharacterX('boyfriend', 100);
		setCharacterY('boyfriend', -100);
        setProperty('boyfriend.visible',false)

PermitirParticulas = true
spawnParticles();
end

function onUpdate(elapsed)
if PermitirParticulas == true then
	particleThink();

end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'particleSpawn' and PermitirParticulas == true then
		particleTimer();

	end

end

-- particle logic
particleCount = 0;
particleLimit = 1000;
particleTime = 10;



function spawnParticles()
	for i = 1, particleLimit do
		tag = ('pixelParticle'..i);
		makeLuaSprite(tag, 'room/particle5', 100000000, 0)
		addLuaSprite(tag, false);
	end
	runTimer('particleSpawn', 0.5, 0);

end

function particleTimer()
	particleCount = particleCount + 1;
	if particleCount > particleLimit then
		particleCount = 1;
	end
--p stand for particle
	tag = ('pixelParticle'..particleCount);


-- the size of the p for X
	setProperty(tag..'.scale.x', getRandomFloat(0, 0));
--the size for the p for Y
	setProperty(tag..'.scale.y', getRandomFloat(0, 0));


--the placement of the p for X
	setProperty(tag..'.x', getRandomFloat(1400, -1200));
--the placement of the p for Y
	setProperty(tag..'.y', getRandomFloat(300, 200));


--the way the p floating for X
	velX = getRandomFloat(0, 0);
	setProperty(tag..'.velocity.x', velX);
--the way the p floating for Y
	velY = getRandomFloat(0, 0);
	setProperty(tag..'.velocity.y', velY);


--the visbelty for the p
	setProperty(tag..'.alpha', 1);
	setProperty(tag..'.angle', 0);

	doTweenAlpha(tag..'AlphaTween', tag, 0, 3, 'linear');
	doTweenAngle(tag..'AngleTween', tag, 360, particleTime, 'linear');
	doTweenX(tag..'ScaleX', tag..'.scale', 50, particleTime, 'linear');
	doTweenY(tag..'ScaleY', tag..'.scale', 50, particleTime, 'linear');
	doTweenX(tag..'SpeedX', tag..'.velocity', velX * 0, particleTime/1, 'linear');
	doTweenY(tag..'SpeedY', tag..'.velocity', velY * 0, particleTime/1, 'linear');

end

