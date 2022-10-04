function onCreate()
	makeLuaSprite('timer', 'timer', 1180, 620)
	setObjectCamera('timer', 'hud')
	scaleObject('timer', 0.05, 0.05);
	addLuaSprite('timer')
	doTweenAlpha('timert', 'timer', 0, 0.001, linear)

    --makeLuaText('Rating', 'Rating:', 0, 50, 500)
    --setTextAlignment('Rating', 'right');
    --setTextSize('Rating', 30);
    --setTextBorder('Rating', 2, '000000');
    --setTextColor('Rating', 'FFFFFF')
    --addLuaText('Rating');
    --setObjectCamera('Rating', 'other')
end

function onSongStart()
    doTweenAlpha('timert', 'timer', 1, 2, linear)
end

function onCreatePost()
    setProperty('timeBar.y', getProperty('timeBar.y') - -10000);
    setProperty('timeBar.x', getProperty('timeBar.x') - 10000);

	setProperty('scoreTxt.x', getProperty('scoreTxt.x') - -10000);
    setProperty('scoreTxt.y', getProperty('scoreTxt.y') - 10000);

    setProperty('timeTxt.y', getProperty('timeTxt.y') - -620);
    setProperty('timeTxt.x', getProperty('timeTxt.x') - -500);

	setProperty('.x', getProperty('timeTxt.x') - 800);
	setProperty('.y', getProperty('timeTxt.y') - 500);
	setProperty('.y', getProperty('.y') - 500);

    scaleObject('timeTxt', 1.2, 1.2);
    scaleObject('timeBar', 1.2, 1.2);

	scaleObject('healthBar', 0.7, 0.7);
	scaleObject('healthBarBG', 0.7, 0.7);
end