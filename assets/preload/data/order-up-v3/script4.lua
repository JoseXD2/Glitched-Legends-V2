
Leftoffsets = {'36', '-137'}
Downoffsets = {'-170', '-290'}
Upoffsets = {'-230', '20'}
Rightoffsets = {'-290', '-120'}

Leftoffsetsbf = {'210', '-350'}
Downoffsetsbf = {'100', '-370'}
Upoffsetsbf = {'-60', '-121'}
Rightoffsetsbf = {'210', '-300'}


function onCreate()
	makeAnimatedLuaSprite('c1', 'characters/spongebob_pibby', getProperty('dad.x'), getProperty('dad.y'));
	addAnimationByPrefix('c1', 'singLeft', 'spongebob_left', 24, false);
	addAnimationByPrefix('c1', 'singDown', 'spongebob_down', 24, false);
	addAnimationByPrefix('c1', 'singUp', 'spongebob_up', 24, false);
	addAnimationByPrefix('c1', 'singRight', 'spongebob_right', 24, false);
	scaleObject('c1', 1, 1);
setProperty('c1.alpha', 0)
	addLuaSprite('c1', false);

	makeAnimatedLuaSprite('c2', 'characters/bf_pibby', getProperty('boyfriend.x'), getProperty('boyfriend.y'));
	addAnimationByPrefix('c2', 'singLeftbf', 'bf_left', 24, false);
	addAnimationByPrefix('c2', 'singDownbf', 'bf_down', 24, false);
	addAnimationByPrefix('c2', 'singUpbf', 'bf_up', 24, false);
	addAnimationByPrefix('c2', 'singRightbf', 'bf_right', 24, false);
	scaleObject('c2', 1, 1);
setProperty('c2.alpha', 0)
	addLuaSprite('c2', false);
end

local singAnims = {"singLeft", "singDown", "singUp", "singRight"}
local singAnimsbf = {"singLeftbf", "singDownbf", "singUpbf", "singRightbf"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'bobalt' then
	doTweenAlpha('AlphaTween', 'c1', 0.5, 0.1, 'linear');
    runTimer('co', 0.2)

		objectPlayAnimation('c1', singAnims[direction + 1], false);

		if direction == 0 then
			setProperty('c1.offset.x', Leftoffsets[1]);
			setProperty('c1.offset.y', Leftoffsets[2]);

		elseif direction == 1 then
			setProperty('c1.offset.x', Downoffsets[1]);
			setProperty('c1.offset.y', Downoffsets[2]);

		elseif direction == 2 then
			setProperty('c1.offset.x', Upoffsets[1]);
			setProperty('c1.offset.y', Upoffsets[2]);

		elseif direction == 3 then
			setProperty('c1.offset.x', Rightoffsets[1]);
			setProperty('c1.offset.y', Rightoffsets[2]);

		end
	end

	if noteType == 'Bfalt' then
	doTweenAlpha('Alpha2Tween', 'c2', 0.5, 0.1, 'linear');
    runTimer('co2', 0.2)

		objectPlayAnimation('c2', singAnimsbf[direction + 1], false);

		if direction == 0 then
			setProperty('c2.offset.x', Leftoffsetsbf[1]);
			setProperty('c2.offset.y', Leftoffsetsbf[2]);


		elseif direction == 1 then
			setProperty('c2.offset.x', Downoffsetsbf[1]);
			setProperty('c2.offset.y', Downoffsetsbf[2]);


		elseif direction == 2 then
			setProperty('c2.offset.x', Upoffsetsbf[1]);
			setProperty('c2.offset.y', Upoffsetsbf[2]);


		elseif direction == 3 then
			setProperty('c2.offset.x', Rightoffsetsbf[1]);
			setProperty('c2.offset.y', Rightoffsetsbf[2]);
		end
end
end


function onTimerCompleted(tag)
if tag == 'co' then
	doTweenAlpha('Alpha8Tween', 'c1', 0.0, 0.1, 'linear');
elseif tag == 'co2' then
	doTweenAlpha('Alpha9Tween', 'c2', 0.0, 0.1, 'linear');

end
end
