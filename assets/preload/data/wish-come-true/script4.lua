
--- code by latter (D)

	songS = 50 --the text size
    songX = 530 --the text X
    songY = 120 --the text Y
-- up there is the song name placement 


    credS = 50
    credX = -1300
    credY = -1300
--up there is the credit shit, it's just like the song name thing.

	CoderN1 = 'latter'
    CoderS1 = 40
    CoderX1 = 35
    CoderY1 = 320

	CoderN2 = 'MrFazbear'
    CoderS2 = 40
    CoderX2 = 35
    CoderY2 = 370

	CoderN3 = ''
    CoderS3 = 40
    CoderX3 = 35
    CoderY3 = 420
-- coders Name 

	ArtistN1 = 'Dusttoybonnie'
	ArtistS1 = 40
	ArtistX1 = 305
	ArtistY1 = 320

	ArtistN2 = 'Omegafinn505'
	ArtistS2 = 40
	ArtistX2 = 305
	ArtistY2 = 370

	ArtistN3 = ''
	ArtistS3 = 40
	ArtistX3 = 305
	ArtistY3 = 420
-- Artist Name

	MusicianN1 = 'LuckiiBean'
	MusicianS1 = 40
	MusicianX1 = 630
	MusicianY1 = 320

	MusicianN2 = ''
	MusicianS2 = 40
	MusicianX2 = 610
	MusicianY2 = 370

	MusicianN3 = ''
	MusicianS3 = 40
	MusicianX3 = 610
	MusicianY3 = 420
-- Musicians Name

	CharterN1 = 'RVG'
	CharterS1 = 40
	CharterX1 = 960
	CharterY1 = 320

	CharterN2 = ''
	CharterS2 = 40
	CharterX2 = 960
	CharterY2 = 370

	CharterN3 = ''
	CharterS3 = 40
	CharterX3 = 960
	CharterY3 = 420
-- Charters Name

	DirectorN = 'Dusttoybonnie'
    DirectorS = 50
    DirectorX = 490
    DirectorY = 525

-- up there you can put whatever names you want.(btw the N1,N2,N3 stand for Name)



--down below is the artist icons credits
	Image1art = 'credits/dusty' --the name for the image
	IconX1art = 560 --the icons X
	IconY1art = 325 --the icons Y
	IconS1art = 0.4 --the size of the icon
--this is the first image 
	Image2art = 'credits/omegafinn'
	IconX2art = 555
	IconY2art = 370
	IconS2art = 0.4
--this is the second image 
	Image3art = 'credits/'
	IconX3art = 480
	IconY3art = 410
	IconS3art = 0
--this is the 3rd image

--down below is the musician icons credits
	Image1song = 'credits/jiwox'
	IconX1song = 675
	IconY1song = 310
	IconS1song = 0

	Image2song = 'credits/'
	IconX2song = 830
	IconY2song = 360
	IconS2song = 0

	Image3song = 'credits/'
	IconX3song = 830
	IconY3song = 410
	IconS3song = 0

--down below is the charter icons credits
	Image1chart = 'credits/rvggamer'
	IconX1chart = 1040
	IconY1chart = 310
	IconS1chart = 0.6

	Image2chart = 'credits/'
	IconX2chart = 1150
	IconY2chart = 360
	IconS2chart = 0

	Image3chart = 'credits/'
	IconX3chart = 1150
	IconY3chart = 410
	IconS3chart = 0

--down below is the coder icons credits
	Image1code = 'credits/latter'
	IconX1code = 150
	IconY1code = 310
	IconS1code = 0.6

	Image2code = 'credits/mrfazbear'
	IconX2code = 230
	IconY2code = 355
	IconS2code = 0.6

	Image3code = 'credits/'
	IconX3code = 180
	IconY3code = 410
	IconS3code = 0

	ImageDirector = 'credits/dusty'
	IconDirectorX = 800
	IconDirectorY = 530
	IconDirectorS = 0.6

--note, if you don't want more than a 3, then put the imageX to -100000, and deleted the credit name

function onCreate()


	makeLuaSprite('Main', 'CREDITTEXT', 1300, 200)
	makeGraphic('Main', 1300, 300, '000000')
	setObjectCamera('Main', 'other')
	setProperty('Main.alpha', 0.5)
	addLuaSprite('Main', true)


	makeLuaSprite('Mainalt', 'CREDITTEXT', 150, -200)
	makeGraphic('Mainalt', 900, 100, '000000')
	setObjectCamera('Mainalt', 'other')
	setProperty('Mainalt.alpha', 0.5)
	addLuaSprite('Mainalt', true)


	makeLuaSprite('Mainalt2', nil, 150, 1200)
	makeGraphic('Mainalt2', 900, 100, '000000')
	setObjectCamera('Mainalt2', 'other')
	setProperty('Mainalt2.alpha', 0.5)
	addLuaSprite('Mainalt2', true)


	makeLuaSprite('BorderUp', 'OUTLINE', 0, 900)
	makeGraphic('BorderUp', 1300, 4, 'FFFFFF')
	setObjectCamera('BorderUp', 'other')
	setProperty('BorderUp.alpha', 0.6)
	addLuaSprite('BorderUp', true)


	makeLuaSprite('iconart1', Image1art, IconX1art, -300)
	setObjectCamera('iconart1', 'other')
scaleObject('iconart1', IconS1art, IconS1art);
	addLuaSprite('iconart1', true)
	makeLuaSprite('iconart2', Image2art, IconX2art, -300)
	setObjectCamera('iconart2', 'other')
scaleObject('iconart2', IconS2art, IconS2art);
	addLuaSprite('iconart2', true)
	makeLuaSprite('iconart3', Image3art, IconX3art, -300)
	setObjectCamera('iconart3', 'other')
scaleObject('iconart3', IconS3art, IconS3art);
	addLuaSprite('iconart3', true)


	makeLuaSprite('iconsong1', Image1song, IconX1song, -300)
	setObjectCamera('iconsong1', 'other')
scaleObject('iconsong1', IconS1song, IconS1song);
	addLuaSprite('iconsong1', true)
	makeLuaSprite('iconsong2', Image2song, IconX2song, -300)
	setObjectCamera('iconsong2', 'other')
scaleObject('iconsong2', IconS2song, IconS2song);
	addLuaSprite('iconsong2', true)
	makeLuaSprite('iconsong3', Image3song, IconX3song, -300)
	setObjectCamera('iconsong3', 'other')
scaleObject('iconsong3', IconS3song, IconS3song);
	addLuaSprite('iconsong3', true)


	makeLuaSprite('iconcode1', Image1code, IconX1code, -300)
	setObjectCamera('iconcode1', 'other')
scaleObject('iconcode1', IconS1code, IconS1code);
	addLuaSprite('iconcode1', true)
	makeLuaSprite('iconcode2', Image2code, IconX2code, -300)
	setObjectCamera('iconcode2', 'other')
scaleObject('iconcode2', IconS2code, IconS2code);
	addLuaSprite('iconcode2', true)
	makeLuaSprite('iconcode3', Image3code, IconX3code, -300)
	setObjectCamera('iconcode3', 'other')
scaleObject('iconcode3', IconS3code, IconS3code);
	addLuaSprite('iconcode3', true)


	makeLuaSprite('iconchart1', Image1chart, IconX1chart, -300)
	setObjectCamera('iconchart1', 'other')
scaleObject('iconchart1', IconS1chart, IconS1chart);
	addLuaSprite('iconchart1', true)
	makeLuaSprite('iconchart2', Image2chart, IconX2chart, -300)
	setObjectCamera('iconchart2', 'other')
scaleObject('iconchart2', IconS2chart, IconS2chart);
	addLuaSprite('iconchart2', true)
	makeLuaSprite('iconchart3', Image3chart, IconX3chart, -300)
	setObjectCamera('iconchart3', 'other')
scaleObject('iconchart3', IconS3chart, IconS3chart);
	addLuaSprite('iconchart3', true)


	makeLuaSprite('IconDirector', ImageDirector, IconDirectorX, -300)
	setObjectCamera('IconDirector', 'other')
scaleObject('IconDirector', IconDirectorS, IconDirectorS);
	addLuaSprite('IconDirector', true)


	makeLuaSprite('Borderupl', 'OUTLINE', 150, 1000)
	makeGraphic('Borderupl', 900, 4, 'FFFFFF')
	setObjectCamera('Borderupl', 'other')
	setProperty('Borderupl.alpha', 0.6)
	addLuaSprite('Borderupl', true)


	makeLuaSprite('Borderupl2', 'OUTLINE', 154, 1000)
	makeGraphic('Borderupl2', 892, 4, 'FFFFFF')
	setObjectCamera('Borderupl2', 'other')
	setProperty('Borderupl2.alpha', 0.6)
	addLuaSprite('Borderupl2', true)


	makeLuaSprite('Borderleft', 'OUTLINE', 150, 900)
	makeGraphic('Borderleft', 4, 100, 'FFFFFF')
	setObjectCamera('Borderleft', 'other')
	setProperty('Borderleft.alpha', 0.6)
	addLuaSprite('Borderleft', true)


	makeLuaSprite('Borderright', 'OUTLINE', 1046, 900)
	makeGraphic('Borderright', 4, 100, 'FFFFFF')
	setObjectCamera('Borderright', 'other')
	setProperty('Borderright.alpha', 0.6)
	addLuaSprite('Borderright', true)


	makeLuaSprite('Borderleft2', 'OUTLINE', 150, 900)
	makeGraphic('Borderleft2', 4, 100, 'FFFFFF')
	setObjectCamera('Borderleft2', 'other')
	setProperty('Borderleft2.alpha', 0.6)
	addLuaSprite('Borderleft2', true)


	makeLuaSprite('Borderright2', 'OUTLINE', 1046, 900)
	makeGraphic('Borderright2', 4, 100, 'FFFFFF')
	setObjectCamera('Borderright2', 'other')
	setProperty('Borderright2.alpha', 0.6)
	addLuaSprite('Borderright2', true)


	makeLuaSprite('BorderDown', 'OUTLINE', 0, -900)
	makeGraphic('BorderDown', 1300, 4, 'FFFFFF')
	setObjectCamera('BorderDown', 'other')
	setProperty('BorderDown.alpha', 0.6)
	addLuaSprite('BorderDown', true)


	makeLuaText('CREDITS', '{CREDITS}', 0, 500, credX)
	setTextAlignment('CREDITS', 'center')
	setTextSize('CREDITS', credS)
	setObjectCamera('CREDITS', 'other')
	addLuaText('CREDITS')


	makeLuaText('Now', 'Now Playing:', 0, 180, -1300)
	setTextAlignment('Now', 'center')
	setTextSize('Now', 50)
	setObjectCamera('Now', 'other')
	addLuaText('Now')


	makeLuaText('SONGNAME', songName, 0, songX, -1500)
	setTextAlignment('SONGNAME', 'center')
	setTextSize('SONGNAME', songS)
	setObjectCamera('SONGNAME', 'other')
	addLuaText('SONGNAME')


	makeLuaText('CODERS', '(CODERS)', 0, -230, 260)
	setTextAlignment('CODERS', 'center')
	setTextSize('CODERS', 50)
	setObjectCamera('CODERS', 'other')
	addLuaText('CODERS')


	makeLuaText('ARTISTS', '(ARTISTS)', 0, 300, 970)
	setTextAlignment('ARTISTS', 'center')
	setTextSize('ARTISTS', 50)
	setObjectCamera('ARTISTS', 'other')
	addLuaText('ARTISTS')


	makeLuaText('DIRECTOR', '(DIRECTOR):', 0, 170, 1270)
	setTextAlignment('DIRECTOR', 'center')
	setTextSize('DIRECTOR', 50)
	setObjectCamera('DIRECTOR', 'other')
	addLuaText('DIRECTOR')


	makeLuaText('MUSICIANS', '(MUSICIANS)', 0, 600, -500)
	setTextAlignment('MUSICIANS', 'center')
	setTextSize('MUSICIANS', 50)
	setObjectCamera('MUSICIANS', 'other')
	addLuaText('MUSICIANS')


	makeLuaText('CHARTERS', '(CHARTERS)', 0, 1300, 260)
	setTextAlignment('CHARTERS', 'center')
	setTextSize('CHARTERS', 50)
	setObjectCamera('CHARTERS', 'other')
	addLuaText('CHARTERS')


	makeLuaText('CODER1', CoderN1, 0, -1320, CoderY1)
	setTextAlignment('CODER1', 'center')
	setTextSize('CODER1', CoderS1)
	setObjectCamera('CODER1', 'other')
	addLuaText('CODER1')


	makeLuaText('CODER2', CoderN2, 0, -1220, CoderY2)
	setTextAlignment('CODER2', 'center')
	setTextSize('CODER2', CoderS2)
	setObjectCamera('CODER2', 'other')
	addLuaText('CODER2')


	makeLuaText('CODER3', CoderN3, 0, -1220, CoderY3)
	setTextAlignment('CODER3', 'center')
	setTextSize('CODER3', CoderS3)
	setObjectCamera('CODER3', 'other')
	addLuaText('CODER3')


	makeLuaText('ARTIST1', ArtistN1, 0, ArtistX1, 920)
	setTextAlignment('ARTIST1', 'center')
	setTextSize('ARTIST1', ArtistS1)
	setObjectCamera('ARTIST1', 'other')
	addLuaText('ARTIST1')


	makeLuaText('ARTIST2', ArtistN2, 0, ArtistX2, 970)
	setTextAlignment('ARTIST2', 'center')
	setTextSize('ARTIST2', ArtistS2)
	setObjectCamera('ARTIST2', 'other')
	addLuaText('ARTIST2')


	makeLuaText('ARTIST3', ArtistN3, 0, ArtistX3, 920)
	setTextAlignment('ARTIST3', 'center')
	setTextSize('ARTIST3', ArtistS3)
	setObjectCamera('ARTIST3', 'other')
	addLuaText('ARTIST3')


	makeLuaText('MUSICIAN1', MusicianN1, 0, MusicianX1, -550)
	setTextAlignment('MUSICIAN1', 'center')
	setTextSize('MUSICIAN1', MusicianS1)
	setObjectCamera('MUSICIAN1', 'other')
	addLuaText('MUSICIAN1') 


	makeLuaText('MUSICIAN2', MusicianN2, 0, MusicianX2, -550)
	setTextAlignment('MUSICIAN2', 'center')
	setTextSize('MUSICIAN2', MusicianS2)
	setObjectCamera('MUSICIAN2', 'other')
	addLuaText('MUSICIAN2') 


	makeLuaText('MUSICIAN3', MusicianN3, 0, MusicianX3, -550)
	setTextAlignment('MUSICIAN3', 'center')
	setTextSize('MUSICIAN3', MusicianS3)
	setObjectCamera('MUSICIAN3', 'other')
	addLuaText('MUSICIAN3') 


	makeLuaText('CHARTER1', CharterN1, 0, 1400, CharterY1)
	setTextAlignment('CHARTER1', 'center')
	setTextSize('CHARTER1', CharterS1)
	setObjectCamera('CHARTER1', 'other')
	addLuaText('CHARTER1')


	makeLuaText('CHARTER2', CharterN2, 0, 1400, CharterY2)
	setTextAlignment('CHARTER2', 'center')
	setTextSize('CHARTER2', CharterS2)
	setObjectCamera('CHARTER2', 'other')
	addLuaText('CHARTER2')


	makeLuaText('CHARTER3', CharterN3, 0, 1400, CharterY3)
	setTextAlignment('CHARTER3', 'center')
	setTextSize('CHARTER3', CharterS3)
	setObjectCamera('CHARTER3', 'other')
	addLuaText('CHARTER3')


	makeLuaText('Director', DirectorN, 0, DirectorX, 1220)
	setTextAlignment('Director', 'center')
	setTextSize('Director', DirectorS)
	setObjectCamera('Director', 'other')
	addLuaText('Director')
end

function onSongStart()
	doTweenX('UNDERLAY0', 'Main', 0, 0.2, 'linear')
	doTweenY('UNDERLAY1', 'Mainalt', 100, 0.2, 'linear')
	doTweenY('UNDERLAY2', 'BorderUp', 200, 0.2, 'linear')
	doTweenY('UNDERLAY3', 'BorderDown', 500, 0.2, 'linear')
	doTweenY('UNDERLAY4', 'Borderleft', 100, 0.2, 'linear')
	doTweenY('UNDERLAY5', 'Borderright', 100, 0.2, 'linear')
	doTweenY('UNDERLAY6', 'Borderupl', 96, 0.2, 'linear')
	doTweenY('UNDERLAY9', 'Mainalt2', 505, 0.2, 'linear')
	doTweenY('UNDERLAY10', 'Borderright2', 505, 0.2, 'linear')
	doTweenY('UNDERLAY11', 'Borderleft2', 505, 0.2, 'linear')
	doTweenY('UNDERLAY12', 'Borderupl2', 601, 0.2, 'linear')


	doTweenY('CREDSTEXT', 'CREDITS', 210, 0.2, 'linear')
	doTweenY('NowEXT', 'Now', 120, 0.2, 'linear')
	doTweenY('SONGNAMEEXT', 'SONGNAME', songY, 0.2, 'linear')


	doTweenX('CODETEXT', 'CODERS', 30, 0.2, 'linear')
	doTweenX('CODER1', 'CODER1', CoderX1, 0.2, 'linear')
	doTweenX('CODER2', 'CODER2', CoderX2, 0.2, 'linear')
	doTweenX('CODER3', 'CODER3', CoderX3, 0.2, 'linear')


	doTweenX('CHARTEXT', 'CHARTERS', 950, 0.2, 'linear')
	doTweenX('CHARTER1', 'CHARTER1', CharterX1, 0.2, 'linear')
	doTweenX('CHARTER2', 'CHARTER2', CharterX2, 0.2, 'linear')
	doTweenX('CHARTER3', 'CHARTER3', CharterX3, 0.2, 'linear')


	doTweenY('ARTTEXT', 'ARTISTS', 260, 0.2, 'linear')
	doTweenY('ARTIST1', 'ARTIST1', ArtistY1, 0.2, 'linear')
	doTweenY('ARTIST2', 'ARTIST2', ArtistY2, 0.2, 'linear')
	doTweenY('ARTIST3', 'ARTIST3', ArtistY3, 0.2, 'linear')


	doTweenY('MUSICTEXT', 'MUSICIANS', 260, 0.2, 'linear')
	doTweenY('MUSICIAN1', 'MUSICIAN1', MusicianY1, 0.2, 'linear')
	doTweenY('MUSICIAN2', 'MUSICIAN2', MusicianY2, 0.2, 'linear')
	doTweenY('MUSICIAN3', 'MUSICIAN3', MusicianY3, 0.2, 'linear')


	doTweenY('DIREEXT', 'DIRECTOR', 525, 0.2, 'linear')
	doTweenY('DirectorEXT', 'Director', DirectorY, 0.2, 'linear')
	doTweenY('icon0', 'IconDirector', IconDirectorY, 0.2, 'linear')


	doTweenY('icon1', 'iconsong1', IconY1song, 0.2, 'linear')
	doTweenY('icon2', 'iconart1', IconY1art, 0.2, 'linear')
	doTweenY('icon3', 'iconchart1', IconY1chart, 0.2, 'linear')
	doTweenY('icon4', 'iconcode1', IconY1code, 0.2, 'linear')
	doTweenY('icon5', 'iconsong2', IconY2song, 0.2, 'linear')
	doTweenY('icon6', 'iconart2', IconY2art, 0.2, 'linear')
	doTweenY('icon7', 'iconchart2', IconY2chart, 0.2, 'linear')
	doTweenY('icon8', 'iconcode2', IconY2code, 0.2, 'linear')
	doTweenY('icon9', 'iconsong3', IconY3song, 0.2, 'linear')
	doTweenY('icon10', 'iconart3', IconY3art, 0.2, 'linear')
	doTweenY('icon11', 'iconchart3', IconY3chart, 0.2, 'linear')
	doTweenY('icon12', 'iconcode3', IconY3code, 0.2, 'linear')
	runTimer('be gone', 7, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'be gone' then


	doTweenY('UNDERLAY0EXIT', 'Main', 1300, 0.2, 'linear')
	doTweenY('UNDERLAY1EXIT', 'BorderUp', -1300, 0.2, 'linear')
	doTweenY('UNDERLAY2EXIT', 'BorderDown', 1300, 0.2, 'linear')
	doTweenX('UNDERLAY3EXIT', 'Mainalt', 1300, 0.2, 'linear')
	doTweenX('UNDERLAY4EXIT', 'Borderleft', 1300, 0.2, 'linear')
	doTweenX('UNDERLAY5EXIT', 'Borderright', 1300, 0.2, 'linear')
	doTweenX('UNDERLAY6EXIT', 'Borderupl', 1300, 0.2, 'linear')
	doTweenX('UNDERLAY7EXIT', 'Mainalt2', 1300, 0.2, 'linear')
	doTweenY('UNDERLAY8EXIT', 'Borderupl2', 1300, 0.2, 'linear')
	doTweenX('UNDERLAY9EXIT', 'Borderleft2', 1300, 0.2, 'linear')
	doTweenX('UNDERLAY10EXIT', 'Borderright2', 1300, 0.2, 'linear')


	doTweenY('CREDSTEXTEXIT', 'CREDITS', credY, 0.3, 'linear')
	doTweenY('SONGNAMEEXIT', 'SONGNAME', -1300, 0.3, 'linear')
	doTweenY('NowEXIT', 'Now', -1300, 0.3, 'linear')


	doTweenY('CODETEXTEXIT', 'CODERS', -1000, 0.3, 'linear')
	doTweenY('CODER1EXIT', 'CODER1', -1000, 0.3, 'linear')
	doTweenY('CODER2EXIT', 'CODER2', -1000, 0.3, 'linear')
	doTweenY('CODER3EXIT', 'CODER3', -1000, 0.3, 'linear')


	doTweenY('DIRECTOREXIT', 'DIRECTOR', -1000, 0.3, 'linear')


	doTweenY('ARTTEXTEXIT', 'ARTISTS', -1000, 0.3, 'linear')
	doTweenY('ARTIST1EXIT', 'ARTIST1', -1000, 0.3, 'linear')
	doTweenY('ARTIST2EXIT', 'ARTIST2', -1000, 0.3, 'linear')
	doTweenY('ARTIST3EXIT', 'ARTIST3', -1000, 0.3, 'linear')


	doTweenY('DirectorEXIT', 'Director', -1000, 0.3, 'linear')


	doTweenY('MUSICTEXTEXIT', 'MUSICIANS', 1000, 0.3, 'linear')
	doTweenY('MUSICIAN1EXIT', 'MUSICIAN1', 1000, 0.3, 'linear')
	doTweenY('MUSICIAN2EXIT', 'MUSICIAN2', 1000, 0.3, 'linear')
	doTweenY('MUSICIAN3EXIT', 'MUSICIAN3', 1000, 0.3, 'linear')


	doTweenY('CHARTEXTEXIT', 'CHARTERS', 1000, 0.3, 'linear')
	doTweenY('CHARTER1EXIT', 'CHARTER1', 1000, 0.3, 'linear')
	doTweenY('CHARTER2EXIT', 'CHARTER2', 1000, 0.3, 'linear')
	doTweenY('CHARTER3EXIT', 'CHARTER3', 1000, 0.3, 'linear')


	doTweenY('iconSE1', 'iconsong1', 1000, 0.3, 'linear')
	doTweenY('iconSE2', 'iconsong2', 1000, 0.3, 'linear')
	doTweenY('iconSE3', 'iconsong3', 1000, 0.3, 'linear')
	doTweenY('iconSE4', 'iconart1', 1000, 0.3, 'linear')
	doTweenY('iconSE5', 'iconart2', 1000, 0.3, 'linear')
	doTweenY('iconSE6', 'iconart3', 1000, 0.3, 'linear')
	doTweenY('iconSE7', 'iconcode1', 1000, 0.3, 'linear')
	doTweenY('iconSE8', 'iconcode2', 1000, 0.3, 'linear')
	doTweenY('iconSE9', 'iconcode3', 1000, 0.3, 'linear')
	doTweenY('iconSE10', 'iconchart1', 1000, 0.3, 'linear')
	doTweenY('iconSE11', 'iconchart2', 1000, 0.3, 'linear')
	doTweenY('iconSE12', 'iconchart3', 1000, 0.3, 'linear')
	doTweenY('iconSE13', 'IconDirector', 1000, 0.3, 'linear')
end
end


function onBeatHit()
        if curBeat % 2 == 0 then
turnvalue = -20

        else
turnvalue = 20



end
setProperty('iconsong1.angle',turnvalue)
setProperty('iconsong2.angle',turnvalue)
setProperty('iconsong3.angle',turnvalue)



setProperty('iconart1.angle',turnvalue)
setProperty('iconart2.angle',turnvalue)
setProperty('iconart3.angle',turnvalue)



setProperty('iconcode1.angle',turnvalue)
setProperty('iconcode2.angle',turnvalue)
setProperty('iconcode3.angle',turnvalue)



setProperty('iconchart1.angle',turnvalue)
setProperty('iconchart2.angle',turnvalue)
setProperty('iconchart3.angle',turnvalue)



setProperty('IconDirector.angle',turnvalue)


        doTweenAngle('bop1', 'iconchart1', 0,0.4,'cubicOut');
        doTweenAngle('bop2', 'iconchart2', 0,0.4,'cubicOut');
        doTweenAngle('bop3', 'iconchart3', 0,0.4,'cubicOut');

        doTweenAngle('bop4', 'iconcode1', 0,0.4,'cubicOut');
        doTweenAngle('bop5', 'iconcode2', 0,0.4,'cubicOut');
        doTweenAngle('bop6', 'iconcode3', 0,0.4,'cubicOut');

        doTweenAngle('bop7', 'iconart1', 0,0.4,'cubicOut');
        doTweenAngle('bop8', 'iconart2', 0,0.4,'cubicOut');
        doTweenAngle('bop9', 'iconart3', 0,0.4,'cubicOut');

        doTweenAngle('bop10', 'iconsong1', 0,0.4,'cubicOut');
        doTweenAngle('bop11', 'iconsong2', 0,0.4,'cubicOut');
        doTweenAngle('bop12', 'iconsong3', 0,0.4,'cubicOut');

        doTweenAngle('bop13', 'IconDirector', 0,0.4,'cubicOut');
end