function onCreate()
	precacheImage('stages/survivors/bart_idle');
 
    makeAnimationList();
end

function onBeatHit()
        if curBeat % 2 == 0 and curStep > 0 and curStep < 15000 then
		setCharacterX('boyfriend', 100);
               setProperty('boyfriend.visible',false)
        end
if curBeat % 2 == 0 and curStep > 128 and curStep < 15000 then
                setCharacterX('boyfriend', 1770);
                setCharacterY('boyfriend', 400);
                 setCharacterY('dad', 400);
               setProperty('boyfriend.visible',true)
        end
if curBeat % 2 == 0 and curStep > 128 and curStep < 15000 then
        setProperty('gothamback32.alpha', 1);
        setProperty('gothamback3.alpha', 1);
        setProperty('gothamback4.alpha', 1);
        setProperty('gothamanimated.alpha', 1);
        setProperty('gothamback5.alpha', 1);
         end
if curBeat % 2 == 0 and curStep > 896 and curStep < 15000 then
        setProperty('gothamback32.alpha', 0);
        setProperty('gothamback3.alpha', 0);
        setProperty('gothamback4.alpha', 0);
        setProperty('gothamanimated.alpha', 0);
        setProperty('gothamback5.alpha', 0);
        setCharacterX('boyfriend', 100);
         setCharacterY('boyfriend', 100);
        setProperty('boyfriend.visible',false)
        setCharacterY('dad', 100);
         end

function onStepHit()
	if curStep == 0 then
		setCharacterX('boyfriend', 100);
               setProperty('boyfriend.visible',true)
end
if curStep == 128 then
		setCharacterX('boyfriend', 1770);
               setProperty('boyfriend.visible',true)
                setCharacterY('boyfriend', 400);
                 setCharacterY('dad', 400);
end
if curStep == 128 then
        setProperty('gothamback32.alpha', 1);
        setProperty('gothamback3.alpha', 1);
        setProperty('gothamback4.alpha', 1);
        setProperty('gothamanimated.alpha', 1);
        setProperty('gothamback5.alpha', 1);
end
if curStep == 896 then
        setProperty('gothamback32.alpha', 0);
        setProperty('gothamback3.alpha', 0);
        setProperty('gothamback4.alpha', 0);
        setProperty('gothamanimated.alpha', 0);
        setProperty('gothamback5.alpha', 0);
        setCharacterX('boyfriend', 100);
        setProperty('boyfriend.visible',false)
        setCharacterY('dad', 100);
        setCharacterY('boyfriend', 100);
end
end
end
