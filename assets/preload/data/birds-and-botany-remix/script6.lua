
local PermitirParticulas = false

function onCreatePost()
PermitirParticulas = false

spawnParticles();
end

function onUpdate(elapsed)
if PermitirParticulas == true then
	particleThink();

end
end

function onStepHit()
	if curStep == 450 then
PermitirParticulas = true

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
		makeLuaSprite(tag, nil, 100000000000000, 0)
		makeGraphic(tag,1,1, 'FFFFFF')
addLuaSprite(tag, true)



	end
	runTimer('particleSpawn', 0.001, 0);
end

function particleTimer()
	particleCount = particleCount + 1;
	if particleCount > particleLimit then
		particleCount = 10;
	end
--p stand for particle
	tag = ('pixelParticle'..particleCount);


-- the size of the p for X
	setProperty(tag..'.scale.x', getRandomFloat(5, 5));
--the size for the p for Y
	setProperty(tag..'.scale.y', getRandomFloat(5, 5));


--the placement of the p for X
	setProperty(tag..'.x', getRandomFloat(-2000, 1800));
--the placement of the p for Y
	setProperty(tag..'.y', getRandomFloat(1500, 1500));


--the way the p floating for X
	velX = getRandomFloat(800, -700);
	setProperty(tag..'.velocity.x', velX);
--the way the p floating for Y
	velY = getRandomFloat(-200, -200);
	setProperty(tag..'.velocity.y', velY);


--the visbelty for the p
	setProperty(tag, '.alpha', 1);


	doTweenAlpha(tag..'AlphaTween', tag, 0, particleTime, 'linear');
	doTweenX(tag..'ScaleX', tag..'.scale', 1, particleTime, 'linear');
	doTweenY(tag..'ScaleY', tag..'.scale', 1, particleTime, 'linear');
	doTweenX(tag..'SpeedX', tag..'.velocity', velX * -3, particleTime/3, 'linear');
	doTweenY(tag..'SpeedY', tag..'.velocity', velY * 0, particleTime/0, 'linear');

end