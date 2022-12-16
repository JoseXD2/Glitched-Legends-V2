local PermitirParticulas = false


function onCreate()

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
		makeLuaSprite(tag, 'sanctuary/particle1', 100000000, 0)
		addLuaSprite(tag, true);
	end
	runTimer('particleSpawn', 0.1, 0);

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
	setProperty(tag..'.x', getRandomFloat(1400, -1000));
--the placement of the p for Y
	setProperty(tag..'.y', getRandomFloat(1300, 1300));


--the way the p floating for X
	velX = getRandomFloat(-300, -300);
	setProperty(tag..'.velocity.x', velX);
--the way the p floating for Y
	velY = getRandomFloat(-100, -90);
	setProperty(tag..'.velocity.y', velY);


--the visbelty for the p
	setProperty(tag..'.alpha', 1);
	setProperty(tag..'.angle', 0);

	doTweenAlpha(tag..'AlphaTween', tag, 1, 3, 'linear');
	doTweenX(tag..'ScaleX', tag..'.scale', 1, particleTime, 'linear');
	doTweenY(tag..'ScaleY', tag..'.scale', 1, particleTime, 'linear');
	doTweenX(tag..'SpeedX', tag..'.velocity', velX * -3, particleTime, 'linear');
	doTweenY(tag..'SpeedY', tag..'.velocity', velY * 3, particleTime, 'linear');

	doTweenX(tag..'Spee', tag..'.velocity', velX * 3, 20, 'linear');
	doTweenY(tag..'Speed', tag..'.velocity', velY * -3, 20, 'linear');


end

function opponentNoteHit()
    if getProperty('health') > 0.1 then
       health = getProperty('health')
       setProperty('health', health- 0.01);
end
end