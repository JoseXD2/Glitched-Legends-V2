 --script by shadow mario himself, downloaded from psych engine discord. if u want other cool scripts get it there, nerd

trailEnabledGf = false;
timerStartedGf = false;


trailLength = 5;
trailDelay = 0.05;

function onCreatePost()
			if not timerStartedGf then
				runTimer('timerTrailGf', trailDelay, 0);
				timerStartedGf = true;
			end
			trailEnabledGf = true;
end



function onTimerCompleted(tag, loops, loopsLeft)


	if tag == 'timerTrailGf' then
		createTrailFrame('Gf');
	end
end


curTrailGf = 0;
function createTrailFrame(tag)
	num = 0;
	color = -1;
	image = '';
	frame = 'BF idle dance';
	x = 0;
	y = 0;
	offsetX = 0;
	offsetY = 0;


	if tag == 'Gf' then
		num = curTrailGf;
		curTrailGf = curTrailGf + 1;
		if trailEnabledGf then
			color = getColorFromHex('00FFFFFF');
			image = getProperty('gf.imageFile')
			frame = getProperty('gf.animation.frameName');
			x = getProperty('gf.x');
			y = getProperty('gf.y');
			offsetX = getProperty('gf.offset.x');
			offsetY = getProperty('gf.offset.y');
		end
	end

	if num - trailLength + 1 >= 0 then
		for i = (num - trailLength + 1), (num - 1) do
			setProperty('psychicTrail'..tag..i..'.alpha', getProperty('psychicTrail'..tag..i..'.alpha') - (0.6 / (trailLength - 1)));
		end
	end
	removeLuaSprite('psychicTrail'..tag..(num - trailLength));

	if not (image == '') then
		trailTag = 'psychicTrail'..tag..num;
		makeAnimatedLuaSprite(trailTag, image, x, y);
		setProperty(trailTag..'.offset.x', offsetX);
		setProperty(trailTag..'.offset.y', offsetY);
		setProperty(trailTag..'.alpha', 0.8);
		setProperty(trailTag..'.color', color);
		setBlendMode(trailTag, 'add');
		addAnimationByPrefix(trailTag, 'stuff', frame, 0, false);
		addLuaSprite(trailTag, false);
	end
end