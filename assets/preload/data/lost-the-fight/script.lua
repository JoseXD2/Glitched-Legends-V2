
function onBeatHit()
	if curBeat % 2 == 0  then
		objectPlayAnimation('charactersbarbera', 'dance', true);
		objectPlayAnimation('charactersbarbera2', 'dance', true);
		objectPlayAnimation('dino1', 'fall', true);
		objectPlayAnimation('dino', 'idle', true);
		objectPlayAnimation('charcbarbera', 'dance', true);
        end
end


function onCreatePost()
		setProperty('dino1.alpha', 1);
		setProperty('dino.alpha', 1);
               setProperty('dino1.alpha', 0);
		setProperty('dino.y', 90);
               objectPlayAnimation('dino1', 'fall', false);
end