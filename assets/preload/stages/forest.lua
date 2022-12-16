
function onCreate()


precacheImage('gravity/mechanic stuff/gnomo1');
precacheImage('gravity/mechanic stuff/gnomo2');
precacheImage('gravity/mechanic stuff/gnomo3');
	makeLuaSprite('forestback1', 'gravity/forestsky', -730,-1500 );
	setScrollFactor('forestback1', 0.7, 1);
        scaleObject('forestback1', 5, 5);
        addLuaSprite('forestback1', false);

	makeLuaSprite('forestback2', 'gravity/temporalthing', 1730,-1500 );
	setScrollFactor('forestback2', 0.7, 0.7);
        scaleObject('forestback2', 3, 3);
        addLuaSprite('forestback2', false);


	makeLuaSprite('forestback6', 'gravity/watertower', 530,-1500 );
	setScrollFactor('forestback6', 0.7, 1);
        scaleObject('forestback6', 3, 3);
        addLuaSprite('forestback6', false);

        makeAnimatedLuaSprite('forestanimated6','gravity/nextcharac', 700,-1700);
	setScrollFactor('forestanimated6',0.7, 1);
        addAnimationByPrefix('forestanimated6','idle','charctfallsf',24,false);
        scaleObject('forestanimated6', 2.5, 2.5);
        addLuaSprite('forestanimated6', true);
        setProperty('forestanimated6.alpha', 1);

	makeLuaSprite('forestback3', 'gravity/forestback', -730,-1200 );
	setScrollFactor('forestback3', 0.9, 0.8);
        scaleObject('forestback3', 3, 3);
        addLuaSprite('forestback3', false);
        setProperty('forestback3.alpha', 1);

	makeLuaSprite('forestback4', 'gravity/forestfront', -730,200 );
	setScrollFactor('forestback4', 1, 1);
        scaleObject('forestback4', 3, 3);
        addLuaSprite('forestback4', false);
        setProperty('forestback4.alpha', 1);

        makeAnimatedLuaSprite('forestanimated','survivors/stannfordsad_idle', 2570, 280);
        addAnimationByPrefix('forestanimated','idle','stanfordsad_idle',24,false);
        scaleObject('forestanimated', 1.3, 1.3);
        addLuaSprite('forestanimated', true);
       setProperty('forestanimated.alpha', 1);

        makeAnimatedLuaSprite('forestanimatedalt','survivors/stannford_idle', 2570, 280);
        addAnimationByPrefix('forestanimatedalt','idle','stanford_idle',24,false);
        scaleObject('forestanimatedalt', 1.3, 1.3);
        addLuaSprite('forestanimatedalt', true);
       setProperty('forestanimatedalt.alpha', 1);

        makeAnimatedLuaSprite('forestanimated2','survivors/gf_pibby', 2170, 100);
        addAnimationByPrefix('forestanimated2','idle','gf_pibby',24,false);
        scaleObject('forestanimated2', 1, 1);
        addLuaSprite('forestanimated2', false);

        makeAnimatedLuaSprite('forestanimated3','gravity/jhonny', -10, 600);
	setScrollFactor('forestanimated3', 0.6, 0.8);
        addAnimationByPrefix('forestanimated3','idle','characfallsf3',24,false);
        scaleObject('forestanimated3', 1, 1);
       setProperty('forestanimated3.alpha', 1);
        addLuaSprite('forestanimated3', true);


        makeAnimatedLuaSprite('forestanimated4','gravity/vick', 2270, 700);
	setScrollFactor('forestanimated4', 0.6, 0.8);
        addAnimationByPrefix('forestanimated4','idle','charactersgravityf2',24,false);
        scaleObject('forestanimated4', 1, 1);
        addLuaSprite('forestanimated4', true);
        setProperty('forestanimated4.alpha', 1);


	makeLuaSprite('forestback5', 'gravity/forestfront2', -2030,-1700 );
	setScrollFactor('forestback5', 0.6, 0.8);
        scaleObject('forestback5', 3, 3);
        addLuaSprite('forestback5', true);
        setProperty('forestback5.alpha', 1);

	makeLuaSprite('thelogo', 'disney_xd', 0,560);
        scaleObject('thelogo', 1, 1);
		setObjectCamera('thelogo', 'other')
        setProperty('thelogo.alpha', 1)
        addLuaSprite('thelogo', false);





end

function onCreatePost()
	if songName == 'dimensional-chaos' then
        setProperty('forestanimated4.alpha', 0);
       setProperty('forestanimatedalt.alpha', 0);

end

	if songName == 'glitchmageddon-v2' then
       setProperty('forestanimated3.alpha', 0);
        setProperty('forestanimated4.alpha', 0);

        setProperty('thelogo.alpha', 0)
       setProperty('forestanimated.alpha', 0);
	makeLuaSprite('thelogor', 'disney_xd_r', 0,560);
        scaleObject('thelogor', 1, 1);
		setObjectCamera('thelogor', 'other')
        setProperty('thelogor.alpha', 1)
        addLuaSprite('thelogor', false);
end
	if songName == 'otherworldly-open' then
       setProperty('forestanimated3.alpha', 0);
        setProperty('forestanimated4.alpha', 0);

        setProperty('thelogo.alpha', 1)
       setProperty('forestanimated.alpha', 0);
end

	if songName == 'glitched-falls-v3' then
  doTweenY('wdm', 'forestanimated3', 2000, 0.1, 'linear');
       setProperty('forestanimated3.alpha', 1);
        setProperty('forestanimated4.alpha', 0);
       setProperty('forestanimatedalt.alpha', 0);
        setProperty('thelogo.alpha', 1)
       setProperty('forestanimated.alpha', 1);
end

	if songName == 'glitched-falls-remix' then
  doTweenY('wdm', 'forestanimated3', 2000, 0.1, 'linear');
       setProperty('forestanimated3.alpha', 1);
        setProperty('forestanimated4.alpha', 0);
       setProperty('forestanimatedalt.alpha', 0);
        setProperty('thelogo.alpha', 1)
       setProperty('forestanimated.alpha', 1);
end

	if songName == 'mystery-twins' then
  doTweenY('wdm', 'forestanimated4', 2000, 0.1, 'linear');
  doTweenX('fuck of2', 'gf', 700, 0.01, 'linear');
       setProperty('forestanimatedalt.alpha', 0);
        setProperty('thelogo.alpha', 1)

end

	if songName == 'mystery-twins-RGB' then
  doTweenY('wdm', 'forestanimated4', 2000, 0.1, 'linear');
  doTweenX('fuck of2', 'gf', 700, 0.01, 'linear');
       setProperty('forestanimatedalt.alpha', 0);
        setProperty('thelogo.alpha', 1)

end

	if songName == 'freakshow-rgb' then

  doTweenX('fuck of2', 'gf', 700, 0.01, 'linear');
       setProperty('forestanimatedalt.alpha', 0);
        setProperty('thelogo.alpha', 1)

end

	if songName == 'glitchmageddon' then
        setProperty('thelogo.alpha', 0)
	makeLuaSprite('thelogor', 'disney_xd_r', 0,560);
       setProperty('forestanimated3.alpha', 0);
        setProperty('forestanimated4.alpha', 0);

        setProperty('thelogo.alpha', 0)
       setProperty('forestanimated.alpha', 0);
        scaleObject('thelogor', 1, 1);
		setObjectCamera('thelogor', 'other')
        setProperty('thelogor.alpha', 1)
        addLuaSprite('thelogor', false);
end
	if songName == 'corruptapocalypse' then
        setProperty('thelogo.alpha', 0)
       setProperty('forestanimated.alpha', 0);
	makeLuaSprite('thelogor', 'disney_xd_r', 0,560);
        scaleObject('thelogor', 1, 1);
		setObjectCamera('thelogor', 'other')
        setProperty('thelogor.alpha', 1)
        addLuaSprite('thelogor', false);

end
end

function onStepHit()


	if curStep == 268 then
  doTweenY('w7dm', 'forestanimated3', 540, 1, 'linear');
  doTweenY('w7dsm', 'forestanimated4', 700, 1, 'linear');
end
end
function onGameOver()
	loadSong(songName, difficulty)
end