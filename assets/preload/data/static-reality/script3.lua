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

	if tag == 'particleSpawn2' and PermitirParticulas == true then
		particleTimer2();
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

	for i = 1, particleLimit do
		tag = ('pixelParticle2'..i);
		makeLuaSprite(tag, 'sanctuary/particle1', 100000000, 0)
		addLuaSprite(tag, true);
	end
	runTimer('particleSpawn2', 0.1, 0);
end

function particleTimer()
	particleCount = particleCount + 1;
	if particleCount > particleLimit then
		particleCount = 1;
	end
--p stand for particle
	tag = ('pixelParticle'..particleCount);


-- the size of the p for X
	setProperty(tag..'.scale.x', getRandomFloat(1, 1));
--the size for the p for Y
	setProperty(tag..'.scale.y', getRandomFloat(1.3, 1.3));


--the placement of the p for X
	setProperty(tag..'.x', getRandomFloat(2900, -1000));
--the placement of the p for Y
	setProperty(tag..'.y', getRandomFloat(1300, 1300));


--the way the p floating for X
	velX = getRandomFloat(100, -100);
	setProperty(tag..'.velocity.x', velX);
--the way the p floating for Y
	velY = getRandomFloat(-1000, -400);
	setProperty(tag..'.velocity.y', velY);


--the visbelty for the p
	setProperty(tag..'.alpha', 1);
	setProperty(tag..'.angle', 0);

	doTweenAlpha(tag..'AlphaTween', tag, 1, particleTime, 'linear');



end

function particleTimer2()
	particleCount = particleCount + 1;
	if particleCount > particleLimit then
		particleCount = 1;
	end
--p stand for particle
	tag = ('pixelParticle2'..particleCount);


-- the size of the p for X
	setProperty(tag..'.scale.x', getRandomFloat(1, 1));
--the size for the p for Y
	setProperty(tag..'.scale.y', getRandomFloat(1.3, 1.3));


--the placement of the p for X
	setProperty(tag..'.x', getRandomFloat(2900, -1000));
--the placement of the p for Y
	setProperty(tag..'.y', getRandomFloat(-1300, -1300));


--the way the p floating for X
	velX = getRandomFloat(100, -100);
	setProperty(tag..'.velocity.x', velX);
--the way the p floating for Y
	velY = getRandomFloat(1000, 400);
	setProperty(tag..'.velocity.y', velY);


--the visbelty for the p
	setProperty(tag..'.alpha', 1);
	setProperty(tag..'.angle', 0);

	doTweenColor(tag..'ColorTween', tag, '80FF00', 0.01, 'linear');




end