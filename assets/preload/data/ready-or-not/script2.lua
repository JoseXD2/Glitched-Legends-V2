local PermitirParticulas = false

function onStepHit()
if curStep == 615 then
PermitirParticulas = true
spawnParticles();
end
if curStep == 820 then

PermitirParticulas = false


end
if curStep == 1013 then
PermitirParticulas = true
spawnParticles();

end
if curStep == 1107 then
PermitirParticulas = false
end
end



function onUpdate(elapsed)
if PermitirParticulas == true then
	particleThink();

end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'bubSpawn' and PermitirParticulas == true then
		bubTimer();
	elseif tag == 'bubSpawn2' and PermitirParticulas == true then
		bubTimer2();
	elseif tag == 'bubSpawn3' and PermitirParticulas == true then
		bubTimer3();
	end

end

-- particle logic
particleCount = 0;
particleLimit = 1000;
particleTime = 5;

function spawnParticles()
	for i = 1, particleLimit do
		tag = ('bubParticle'..i);
		makeLuaSprite(tag, 'bk/bubble', 100000000, 0)
		addLuaSprite(tag, true);
end
	runTimer('bubSpawn', 0.2, 0);

	for i = 1, particleLimit do
		tag = ('bubParticle2'..i);
		makeLuaSprite(tag, 'bk/bubble2', 100000000, 0)
		addLuaSprite(tag, true);
end
	runTimer('bubSpawn2', 0.2, 0);

	for i = 1, particleLimit do
		tag = ('bubParticle3'..i);
		makeLuaSprite(tag, 'bk/bubble3', 100000000, 0)
		addLuaSprite(tag, true);
end
	runTimer('bubSpawn3', 0.2, 0);
end


function bubTimer()
	particleCount = particleCount + 1;
	if particleCount > particleLimit then
		particleCount = 1;
	end
--p stand for particle
	tag = ('bubParticle'..particleCount);


-- the size of the p for X
	setProperty(tag..'.scale.x', getRandomFloat(0.5, 0.5));
--the size for the p for Y
	setProperty(tag..'.scale.y', getRandomFloat(0.5, 0.5));


--the placement of the p for X
	setProperty(tag..'.x', getRandomFloat(3200, -1200));
--the placement of the p for Y
	setProperty(tag..'.y', getRandomFloat(1200, 1200));


--the way the p floating for X
	velX = getRandomFloat(900, -900);
	setProperty(tag..'.velocity.x', velX);
--the way the p floating for Y
	velY = getRandomFloat(-900, -200);
	setProperty(tag..'.velocity.y', velY);


--the visbelty for the p
	setProperty(tag..'.alpha', 1);
	setProperty(tag..'.angle', 0);

	doTweenAlpha(tag..'AlphaTween', tag, 0, particleTime, 'linear');

	doTweenX(tag..'ScaleX', tag..'.scale', 0.5, particleTime, 'linear');
	doTweenY(tag..'ScaleY', tag..'.scale', 0.5, particleTime, 'linear');
	doTweenX(tag..'SpeedX', tag..'.velocity', velX * -9, particleTime, 'linear');
	doTweenY(tag..'SpeedY', tag..'.velocity', velY * 9, particleTime, 'linear');
end

function bubTimer2()
	particleCount = particleCount + 1;
	if particleCount > particleLimit then
		particleCount = 1;
	end
--p stand for particle
	tag = ('bubParticle2'..particleCount);


-- the size of the p for X
	setProperty(tag..'.scale.x', getRandomFloat(0.5, 0.5));
--the size for the p for Y
	setProperty(tag..'.scale.y', getRandomFloat(0.5, 0.5));


--the placement of the p for X
	setProperty(tag..'.x', getRandomFloat(3200, -1200));
--the placement of the p for Y
	setProperty(tag..'.y', getRandomFloat(1200, 1200));


--the way the p floating for X
	velX = getRandomFloat(900, -900);
	setProperty(tag..'.velocity.x', velX);
--the way the p floating for Y
	velY = getRandomFloat(-900, -200);
	setProperty(tag..'.velocity.y', velY);


--the visbelty for the p
	setProperty(tag..'.alpha', 1);
	setProperty(tag..'.angle', 0);

	doTweenAlpha(tag..'AlphaTween', tag, 0, particleTime, 'linear');

	doTweenX(tag..'ScaleX', tag..'.scale', 0.5, particleTime, 'linear');
	doTweenY(tag..'ScaleY', tag..'.scale', 0.5, particleTime, 'linear');
	doTweenX(tag..'SpeedX', tag..'.velocity', velX * -9, particleTime, 'linear');
	doTweenY(tag..'SpeedY', tag..'.velocity', velY * 9, particleTime, 'linear');

end

function bubTimer3()
	particleCount = particleCount + 1;
	if particleCount > particleLimit then
		particleCount = 1;
	end
--p stand for particle
	tag = ('bubParticle3'..particleCount);


-- the size of the p for X
	setProperty(tag..'.scale.x', getRandomFloat(0.5, 0.5));
--the size for the p for Y
	setProperty(tag..'.scale.y', getRandomFloat(0.5, 0.5));


--the placement of the p for X
	setProperty(tag..'.x', getRandomFloat(3200, -1200));
--the placement of the p for Y
	setProperty(tag..'.y', getRandomFloat(1200, 1200));


--the way the p floating for X
	velX = getRandomFloat(900, -900);
	setProperty(tag..'.velocity.x', velX);
--the way the p floating for Y
	velY = getRandomFloat(-900, -200);
	setProperty(tag..'.velocity.y', velY);


--the visbelty for the p
	setProperty(tag..'.alpha', 1);
	setProperty(tag..'.angle', 0);

	doTweenAlpha(tag..'AlphaTween', tag, 0, particleTime, 'linear');

	doTweenX(tag..'ScaleX', tag..'.scale', 0.5, particleTime, 'linear');
	doTweenY(tag..'ScaleY', tag..'.scale', 0.5, particleTime, 'linear');
	doTweenX(tag..'SpeedX', tag..'.velocity', velX * -9, particleTime, 'linear');
	doTweenY(tag..'SpeedY', tag..'.velocity', velY * 9, particleTime, 'linear');


end

