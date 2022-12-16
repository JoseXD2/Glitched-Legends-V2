



local PermitirRocks = true
function onCreatePost()

			setObjectOrder('boyfriend', 99999);
			setObjectOrder('dad', 9999);
spawnRocks();
end

function onUpdate(elapsed)

	rocksThink();
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'RocksSpawn' and PermitirRocks == true then
		RocksTimer();
end
	if tag == 'RocksSpawn2' and PermitirRocks == true then
		RocksTimer2();
	end
	if tag == 'RocksSpawn3' and PermitirRocks == true then
		RocksTimer3();

	end
	if tag == 'RocksSpawn4' and PermitirRocks == true then
		RocksTimer4();
	end
	if tag == 'RocksSpawn5' and PermitirRocks == true then
		RocksTimer5();

	end
end

-- particle logic
RocksCount = 1;
RocksLimit = 900;
RocksTime = 50;

function spawnRocks()
	for i = 1, RocksLimit do
		tag = ('Rocks'..i);
	makeLuaSprite(tag, 'void/rock2' ,100000000 , 0);
	setScrollFactor(tag, 0.7, 1);
        scaleObject(tag, 0.1, 0.1);
        addLuaSprite(tag, false);

	end
	runTimer('RocksSpawn', 5, 0);

	for i = 1, RocksLimit do
		tag = ('Rocks2'..i);
	makeLuaSprite(tag, 'void/rock1' ,1000000 , 0);
	setScrollFactor(tag, 0.7, 1);
			setObjectOrder(tag, 50);
        scaleObject(tag, 0.1, 0.1);
        addLuaSprite(tag, true);


	end
	runTimer('RocksSpawn2', 30, 0);

	for i = 1, RocksLimit do
		tag = ('Rocks3'..i);
	makeLuaSprite(tag, 'void/rock3' ,1000000 , 0);
	setScrollFactor(tag, 0.7, 900);

        scaleObject(tag, 0.1, 0.1);
        addLuaSprite(tag, false);


	end
	runTimer('RocksSpawn3', 10, 0);

	for i = 1, RocksLimit do
		tag = ('Rocks4'..i);
	makeLuaSprite(tag, 'void/rock4' ,1000000 , 0);
	setScrollFactor(tag, 0.7, 1);
        scaleObject(tag, 0.1, 0.1);
        addLuaSprite(tag, false);


	end
	runTimer('RocksSpawn4', 7, 0);

	for i = 1, RocksLimit do
		tag = ('Rocks5'..i);
	makeLuaSprite(tag, 'void/rock5' ,1000000 , 0);
	setScrollFactor(tag, 0.7, 1);

        scaleObject(tag, 0.1, 0.1);
        addLuaSprite(tag, true);


	end
	runTimer('RocksSpawn5', 20, 0);
end


function RocksTimer()
	RocksCount = RocksCount + 1;
	if RocksCount > RocksLimit then
		RocksCount = 1;
	end


	tag = ('Rocks'..RocksCount);

-- the size for X
	setProperty(tag..'.scale.x', getRandomFloat(1, 0.7));
--the size for Y
	setProperty(tag..'.scale.y', getRandomFloat(1, 0.7));


--the placement for X
	setProperty(tag..'.x', getRandomFloat(3300, 3300));
--the placement for Y
	setProperty(tag..'.y', getRandomFloat(-300, 0));


--the way the floating for X
	velX = getRandomFloat(-170, -70);
	setProperty(tag..'.velocity.x', velX);

	velY = getRandomFloat(30, 0);
	setProperty(tag..'.velocity.y', velY);

	setProperty(tag..'.angle', getRandomInt(360, 0));
	setProperty(tag..'.alpha', 1);

	doTweenAlpha(tag..'AlphaTween', tag, 1, RocksTime, 'linear');
	doTweenAngle(tag..'AngleTween', tag, 360, RocksTime, 'linear');

end


function RocksTimer2()
	RocksCount = RocksCount + 1;
	if RocksCount > RocksLimit then
		RocksCount = 1;
	end

	tag = ('Rocks2'..RocksCount);

-- the size for X
	setProperty(tag..'.scale.x', getRandomFloat(2, 1.5));
--the size for Y
	setProperty(tag..'.scale.y', getRandomFloat(2, 1.5));

--the placement for X
	setProperty(tag..'.x', getRandomFloat(3300, 3300));
--the placement for Y
	setProperty(tag..'.y', getRandomFloat(-300, 0));

--the way the floating for X
	velX = getRandomFloat(-500, -400);
	setProperty(tag..'.velocity.x', velX);

	velY = getRandomFloat(60, 90);
	setProperty(tag..'.velocity.y', velY);

	setProperty(tag..'.angle', getRandomInt(360, 0));
	setProperty(tag..'.alpha', 1);

	doTweenAlpha(tag..'AlphaTween', tag, 1, RocksTime, 'linear');
	doTweenAngle(tag..'AngleTween', tag, 360, RocksTime, 'linear');



end

function RocksTimer3()
	RocksCount = RocksCount + 1;
	if RocksCount > RocksLimit then
		RocksCount = 1;
	end


	tag = ('Rocks3'..RocksCount);

-- the size for X
	setProperty(tag..'.scale.x', getRandomFloat(1, 0.7));
--the size for Y
	setProperty(tag..'.scale.y', getRandomFloat(1, 0.7));


--the placement for X
	setProperty(tag..'.x', getRandomFloat(3300, 3300));
--the placement for Y
	setProperty(tag..'.y', getRandomFloat(-300, 0));


--the way the floating for X
	velX = getRandomFloat(-10, -70);
	setProperty(tag..'.velocity.x', velX);

	velY = getRandomFloat(30, 0);
	setProperty(tag..'.velocity.y', velY);

	setProperty(tag..'.angle', getRandomInt(360, 0));
	setProperty(tag..'.alpha', 1);

	doTweenAlpha(tag..'AlphaTween', tag, 1, RocksTime, 'linear');
	doTweenAngle(tag..'AngleTween', tag, 360, RocksTime, 'linear');

end

function RocksTimer4()
	RocksCount = RocksCount + 1;
	if RocksCount > RocksLimit then
		RocksCount = 1;
	end

	tag = ('Rocks4'..RocksCount);

-- the size for X
	setProperty(tag..'.scale.x', getRandomFloat(1, 1.5));
--the size for Y
	setProperty(tag..'.scale.y', getRandomFloat(1, 1.5));

--the placement for X
	setProperty(tag..'.x', getRandomFloat(3300, 3300));
--the placement for Y
	setProperty(tag..'.y', getRandomFloat(-300, 0));

--the way the floating for X
	velX = getRandomFloat(-30, -70);
	setProperty(tag..'.velocity.x', velX);

	velY = getRandomFloat(60, 90);
	setProperty(tag..'.velocity.y', velY);

	setProperty(tag..'.angle', getRandomInt(360, 0));
	setProperty(tag..'.alpha', 1);

	doTweenAlpha(tag..'AlphaTween', tag, 1, RocksTime, 'linear');
	doTweenAngle(tag..'AngleTween', tag, 360, RocksTime, 'linear');



end

function RocksTimer5()
	RocksCount = RocksCount + 1;
	if RocksCount > RocksLimit then
		RocksCount = 1;
	end


	tag = ('Rocks5'..RocksCount);

-- the size for X
	setProperty(tag..'.scale.x', getRandomFloat(2.5, 1.5));
--the size for Y
	setProperty(tag..'.scale.y', getRandomFloat(2.5, 1.5));


--the placement for X
	setProperty(tag..'.x', getRandomFloat(3300, 3300));
--the placement for Y
	setProperty(tag..'.y', getRandomFloat(-300, 0));


--the way the floating for X
	velX = getRandomFloat(-300, -200);
	setProperty(tag..'.velocity.x', velX);

	velY = getRandomFloat(30, 0);
	setProperty(tag..'.velocity.y', velY);

	setProperty(tag..'.angle', getRandomInt(360, 0));
	setProperty(tag..'.alpha', 1);

	doTweenAlpha(tag..'AlphaTween', tag, 1, RocksTime, 'linear');
	doTweenAngle(tag..'AngleTween', tag, 360, RocksTime, 'linear');

end

function onCreate()
precacheImage('void/Rock1');
precacheImage('void/Rock2');
precacheImage('void/Rock3');
precacheImage('void/Rock4');
precacheImage('void/Rock5');
        makeAnimatedLuaSprite('void','void/space',-1830,-1400)addAnimationByPrefix('void','dance','space',14,true)

        setProperty('void.alpha', 1);
	setScrollFactor('void', 0.4, 1);

        scaleObject('void', 14, 14);

	makeLuaSprite('voidback3', 'void/portal', 830,-900 );
	setScrollFactor('voidback3', 1, 1);
        scaleObject('voidback3', 4, 4);


	makeLuaSprite('voidback', 'void/asteroidrock2', -1230,-900 );
	setScrollFactor('voidback', 0.7, 1);
        scaleObject('voidback', 2, 2);


	makeLuaSprite('voidback2', 'void/asteroidrock', -230,325 );
	setScrollFactor('voidback2', 1, 1);
        scaleObject('voidback2', 2, 2);


        makeAnimatedLuaSprite('void2','void/gwen', 1370, 300);
        addAnimationByPrefix('void2','idle','gwen?idle ',24,false);
        setProperty('void2.alpha', 1);

        scaleObject('void2', 1, 1);

        makeAnimatedLuaSprite('void3','void/kevin11', 1970, -400);
        addAnimationByPrefix('void3','idle','kevin',24,false);
        setProperty('void3.alpha', 1);

        scaleObject('void3', 1, 1);
	makeLuaSprite('thelogo', 'CN_logo', 920,560);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')

        addLuaSprite('void', false);
        addLuaSprite('voidback', true);
        addLuaSprite('voidback2', true);
        addLuaSprite('void2', true);
        addLuaSprite('voidback3', true);
        addLuaSprite('void3', true);
        addLuaSprite('thelogo', false);
end

function onEvent(name, value1, value2)
	if name == 'cinematic' and value1 == 'a' then
		setProperty('void3.color', '000000')
		setProperty('void2.color', '000000')


end
	if name == 'cinematic' and value1 == 'b' then
		setProperty('void2.color', getColorFromHex('FFFFFF'))
		setProperty('void3.color', getColorFromHex('FFFFFF'))

end
end