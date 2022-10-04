currentDifficulty = 'its still fucked';

function onCreate()
    makeLuaText('songText', "VS. Mouse | 2.5", 0, 2, 700);
    setTextAlignment('songText', 'left');
    setTextSize('songText', 18);
    setTextBorder('songText', 1, '2b0000');
    setObjectCamera('songText', 'other');
    addLuaText('songText');
end

function onCreatePost()
    setProperty('timeBar.y', getProperty('timeBar.y') - 10);
    setProperty('timeTxt.y', getProperty('timeTxt.y') - 10);
end

function onUpdate(elapsed)
    currentDifficulty = getProperty('storyDifficultyText');
    setTextString('songText', "VS. Mouse | 2.5");
end